#define F_CPU 12000000      /* 12 MHz */
#define BAUD    250000      /* 250'000 baud */

#define READY    PB4
#define RW_EN    PB2
#define RW       PB1
#define INT      PC3
#define T11      PD6
#define IO       PD5
#define ROMCLK   PD7

#define BIT_SET(x,y)    (x |= (1<<y))     /* Set bit y in byte x */
#define BIT_CLEAR(x,y)  (x &= (~(1<<y)))  /* Clear bit y in byte x */
#define BIT_GET(x,y)    (x & (1<<y))      /* Get bit y in byte x */

#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>

#include "lpc10.h"

static const uint8_t lookup[16] = {
  0x0, 0x8, 0x4, 0xc, 0x2, 0xa, 0x6, 0xe,
  0x1, 0x9, 0x5, 0xd, 0x3, 0xb, 0x7, 0xf
};

inline static uint8_t reverse(uint8_t n) {
   return (lookup[n&0b1111] << 4) | lookup[n>>4];
}

/**
 * Atmega 328P internal UART functions
 **/
inline void uart_init()
{
    unsigned int ubrr = F_CPU/16/BAUD-1;
    UBRR0H = (uint8_t)(ubrr >> 8);
    UBRR0L = (uint8_t)ubrr;
    UCSR0B = (1 << RXEN0) | (1 << TXEN0);
    UCSR0C = (0 << USBS0) | (3 << UCSZ00);
}
inline uint8_t uart_can_read(void) { return (UCSR0A & (1 << RXC0)); }
inline uint8_t uart_read(void) { return UDR0; }
inline uint8_t uart_can_write(void) { return (UCSR0A & (1 << UDRE0)); }
inline void uart_write(uint8_t data) { UDR0 = data; }
void uart_write_string(const uint8_t *str)
{
    while(*str)
    {
        while(!uart_can_write());
        uart_write(*str);
        str++;
    }
}


static void fail_abort(const uint8_t *s)
{
    uart_write_string("Abort: ");
    uart_write_string(s);
    uart_write_string("\r\n");
    while(1){}
}


/**
 * TMS5220 functions
 **/
inline uint8_t tms_is_ready() { return !BIT_GET(PINB, READY); }
inline uint8_t tms_is_interrupt() { return !BIT_GET(PINC, INT); }

inline void tms_wait_for_bitstream()
{
    while (!BIT_GET(PIND, T11));
    while (BIT_GET(PIND, T11));
    while (!BIT_GET(PIND, ROMCLK));
    while (BIT_GET(PIND, ROMCLK));
}
inline uint8_t tms_sample_io()
{
    /* In case our state_post_ functions returns while ROMCLK is still low;
     * wail until romclock is high and then low again. */
    while (!BIT_GET(PIND, ROMCLK));
    while (BIT_GET(PIND, ROMCLK));
    return BIT_GET(PIND, IO);
}
inline void tms_rw_write()
{
    BIT_CLEAR(PORTB, RW);
    BIT_SET(PORTB, RW_EN);
}
inline void tms_rw_read()
{
    BIT_SET(PORTB, RW);
    BIT_SET(PORTB, RW_EN);
}
inline void tms_rw_disable() 
{ 
    BIT_CLEAR(PORTB, RW_EN); 
}

uint8_t lookup_b[256];
uint8_t lookup_c[256];
uint8_t lookup_d[256];

void generate_dbus_lookup_tables() {
    uint8_t v = 0;
    do {
        v--;
        lookup_b[v] = (v & (1 << 0)) >> (0 - 0)    // BIT0 -> PB0
                      | (v & (1 << 1)) << (3 - 1)  // BIT1 -> PB3
                      | (v & (1 << 2)) << (5 - 2); // BIT2 -> PB5
        lookup_c[v] = (v & (1 << 4)) >> (4 - 1)    // BIT4 -> PC1
                      | (v & (1 << 3)) >> (3 - 0); // BIT3 -> PC0
        lookup_d[v] = (v & (1 << 7)) >> (7 - 2)    // BIT7 -> PD2
                      | (v & (1 << 6)) >> (6 - 3)  // BIT6 -> PD3
                      | (v & (1 << 5)) >> (5 - 4); // BIT5 -> PD4
    } while(v);
}

inline void tms_dbus_write_port_b(uint8_t v)
{
    PORTB = (PORTB & 0b11010110) | lookup_b[v];
}

inline void tms_dbus_write_port_c(uint8_t v)
{
    PORTC = (PORTC & 0b11111100) | lookup_c[v];
}

inline void tms_dbus_write_port_d(uint8_t v)
{
    PORTD = (PORTD & 0b11100011) | lookup_d[v];
}

void tms_dbus_issue_command(uint8_t v)
{
    tms_rw_disable();
    while (!tms_is_ready()); /* wait until TMS is ready */
    tms_dbus_write_port_b(v);
    tms_dbus_write_port_c(v);
    tms_dbus_write_port_d(v);
    tms_rw_write();
    while (tms_is_ready());  /* wait until TMS has picked up the command. */
    while (!tms_is_ready()); /* wait for operation completion. */
    tms_rw_disable();
}

/**
 * Reset TMS5220 chip.
 * Official power-up clear calls for 9x 0xFF followed by RESET command (X111XXXX).
 **/
void tms_issue_powerup_clear()
{
    for (uint8_t i = 0; i < 10; i++) {
        tms_dbus_issue_command(0xFF);
    	_delay_ms(20);
    }
}

/**
 * Issue SPEAK EXTERNAL command on TMS5220.
 **/
void tms_issue_spkext()
{
    tms_dbus_issue_command(reverse(0b00000110));
    _delay_ms(20);
}


/**
 * State- and temporary data variables.
 **/

/* Tracks our current read- and write-state. */
uint8_t read_state = 0x00;
uint8_t write_state = 0x00;

unsigned int num_read = 0x00;

uint8_t read_buffer = 0x00;
uint8_t write_buffer = 0x00;
uint8_t write_buffer_high = 0x00;


/**
 * Sample current bit value on the T11 pin and shift onto write_buffer.
 **/
void do_state_sample()
{
    write_buffer <<= 1;
    write_buffer |= tms_sample_io() ? 0x01 : 0x00;
}

void do_state_post_t11()
{
    if (write_state)
    {
        if (uart_can_write())
        {
            uart_write(write_buffer);
            write_buffer = 0x00;
        } else fail_abort("t11(): Could not write UART.");
    } // else noop
}

void do_state_post_d0()
{
    if (read_state == 1)
    {
        if (tms_is_ready())
        {
            if ( 0 ) {
                if (uart_can_read())
                {
                    read_buffer = uart_read();
                    read_state++;
                    /* num_read++; */ /* moved to do_state_post_d1() */
                }
            }
            else 
            {
                if (num_read < sizeof(lpc10))
                {
                    read_buffer = lpc10[num_read++];
                    read_state++;
                }
            } // else noop
        } // else noop
    } // else noop
}

void do_state_post_d1()
{
    if (read_state == 2)
    {
        num_read++; /* Moved from do_state_post_d0 to even out timing. */
        tms_rw_disable();
        read_state++;
    } // else noop
}

void do_state_post_d2()
{
    if (read_state == 3)
    {
        tms_dbus_write_port_b(read_buffer);
    } // else noop
}

void do_state_post_d3()
{
    if (read_state == 3)
    {
        tms_dbus_write_port_c(read_buffer);
    } // else noop
}

void do_state_post_d4()
{
    if (read_state == 3)
    {
        tms_dbus_write_port_d(read_buffer);
    } // else noop
}

void do_state_post_d5()
{
    if (read_state == 3)
    {
        tms_rw_write(); /* Instruct TMS to read data from DBUS. */
        read_state = 1;
    } // else noop
}

void do_state_post_d6()
{
    // do_state_post_d0();
}

void do_state_post_d7()
{
    write_buffer_high = write_buffer;
    write_buffer = 0x00;
    write_state = 1;
}

void do_state_post_d8()
{
    if (uart_can_write())
    {
        uart_write(write_buffer_high);
    } else fail_abort("d8(): Could not write UART.");
}

char buf[16];
void do_state_post_d9()
{
    if ( 1 )
    {
        /* Check for ~INT after we've filled the FIFO. */
        if ( tms_is_interrupt() && num_read > 12 ) 
        {
            snprintf(buf, 15, "INT@%i[%02x]", num_read, read_buffer);
            fail_abort(buf);
        }
    }
}


void setup_ports_direction()
{
	/* 0 = Input, 1 = Output */
	DDRB = 0b00101111;  /* [lsb->msb] DBUS7, RW, RW_EN, DBUS6, ~READY, DBUS5, SYSCLK, N/C */
	DDRC = 0b00000011;  /* [lsb->msb] DBUS4, DBUS3, ADCIN, ~INT, M1, M0, ~RESET */
	DDRD = 0b00011110;  /* [lsb->msb] UART_RX, UART_TX, DBUS0, DBUS1, DBUS2, IO, T11, ROMCLK */
}

int main(void)
{
    generate_dbus_lookup_tables();
    setup_ports_direction();
    tms_rw_disable();
    uart_init();
    tms_issue_powerup_clear();
    read_state = 1;

    while(!uart_can_read()); /* Wait for "start-command". */

    tms_issue_spkext();

    do {
        tms_wait_for_bitstream();
        do_state_post_t11();
        do_state_sample(); do_state_post_d0();
        do_state_sample(); do_state_post_d1();
        do_state_sample(); do_state_post_d2();
        do_state_sample(); do_state_post_d3();
        do_state_sample(); do_state_post_d4();
        do_state_sample(); do_state_post_d5();
        do_state_sample(); do_state_post_d6();
        do_state_sample(); do_state_post_d7();
        do_state_sample(); do_state_post_d8();
        do_state_sample(); do_state_post_d9();
    } while(1);
}