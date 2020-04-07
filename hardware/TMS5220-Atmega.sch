EESchema Schematic File Version 4
LIBS:TMS5220-Atmega-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "TMS5220 Exploration Unit"
Date "2020-04-10"
Rev ""
Comp "https://github.com/madworx/tms5220-atmega"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 5DDCFD37
P 2000 3050
F 0 "U1" H 1700 4550 50  0000 R CNN
F 1 "ATmega328P-PU" V 1450 3400 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket" H 2000 3050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2000 3050 50  0001 C CNN
	1    2000 3050
	1    0    0    -1  
$EndComp
$Comp
L TPS6735:TPS6735 U3
U 1 1 5DDD14DD
P 7850 1850
F 0 "U3" H 8350 2140 60  0000 C CNN
F 1 "TPS6735" H 8350 2034 60  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8050 1900 60  0001 L CNN
F 3 "https://www.mouser.se/ProductDetail/Texas-Instruments/TPS6735IPE4?qs=sGAEpiMZZMtitjHzVIkrqfSWpcWTPe%252BShhX7cmTv0g0%3D" H 8050 1700 60  0001 L CNN
	1    7850 1850
	1    0    0    -1  
$EndComp
$Comp
L UB232R:UB232R IC1
U 1 1 5DDDA366
P 8950 3650
F 0 "IC1" H 9550 3085 50  0000 C CNN
F 1 "UB232R" H 9550 3176 50  0000 C CNN
F 2 "UB232R:UB232R" H 10000 3750 50  0001 L CNN
F 3 "https://www.mouser.se/ProductDetail/FTDI/UB232R?qs=%2Fha2pyFadugCqdm6U58lyspsRhZ6HQkFB6zKPMYNFlg%3D" H 10000 3650 50  0001 L CNN
F 4 "USB-serial module,FT232RQ,USB B,UB232R USB-serial module,FT232RQ,USB B,UB232R" H 10000 3550 50  0001 L CNN "Description"
F 5 "4" H 10000 3450 50  0001 L CNN "Height"
F 6 "FTDI Chip" H 10000 3350 50  0001 L CNN "Manufacturer_Name"
F 7 "UB232R" H 10000 3250 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "895-UB232R" H 10000 3150 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=895-UB232R" H 10000 3050 50  0001 L CNN "Mouser Price/Stock"
F 10 "0429262" H 10000 2950 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/0429262" H 10000 2850 50  0001 L CNN "RS Price/Stock"
	1    8950 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 2550 3050 2550
NoConn ~ 3050 2550
$Comp
L power:GND #PWR0101
U 1 1 5DDDD42C
P 2000 4550
F 0 "#PWR0101" H 2000 4300 50  0001 C CNN
F 1 "GND" H 2005 4377 50  0000 C CNN
F 2 "" H 2000 4550 50  0001 C CNN
F 3 "" H 2000 4550 50  0001 C CNN
	1    2000 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DDED6DF
P 9050 3750
F 0 "#PWR0104" H 9050 3500 50  0001 C CNN
F 1 "GND" H 9055 3577 50  0000 C CNN
F 2 "" H 9050 3750 50  0001 C CNN
F 3 "" H 9050 3750 50  0001 C CNN
	1    9050 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DDEDA17
P 3850 3800
F 0 "#PWR0105" H 3850 3550 50  0001 C CNN
F 1 "GND" H 3855 3627 50  0000 C CNN
F 2 "" H 3850 3800 50  0001 C CNN
F 3 "" H 3850 3800 50  0001 C CNN
	1    3850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2750 3050 2750
Wire Wire Line
	2600 2850 3050 2850
Wire Wire Line
	2600 2950 3050 2950
Wire Wire Line
	2600 3050 3050 3050
Wire Wire Line
	2600 3150 3050 3150
Wire Wire Line
	2600 3250 3050 3250
Wire Wire Line
	2600 3750 3050 3750
Wire Wire Line
	2600 3850 3050 3850
Wire Wire Line
	2600 3950 3050 3950
Wire Wire Line
	2600 4050 3050 4050
Wire Wire Line
	2600 4150 3050 4150
Wire Wire Line
	2600 4250 3050 4250
Wire Wire Line
	2600 2050 3050 2050
Wire Wire Line
	2600 1950 3050 1950
Wire Wire Line
	2600 1850 3050 1850
Entry Wire Line
	3050 1850 3150 1950
Entry Wire Line
	3050 1950 3150 2050
Entry Wire Line
	3050 2050 3150 2150
Entry Wire Line
	3050 2750 3150 2850
Entry Wire Line
	3050 2850 3150 2950
Entry Wire Line
	3050 2950 3150 3050
Entry Wire Line
	3050 3050 3150 3150
Entry Wire Line
	3050 3150 3150 3250
Entry Wire Line
	3050 3250 3150 3350
Entry Wire Line
	3050 3750 3150 3850
Entry Wire Line
	3050 3850 3150 3950
Entry Wire Line
	3050 3950 3150 4050
Entry Wire Line
	3050 4050 3150 4150
Entry Wire Line
	3050 4150 3150 4250
Entry Wire Line
	3050 4250 3150 4350
Text Label 2700 3750 0    50   ~ 0
DBUS0
Text Label 2700 3850 0    50   ~ 0
DBUS1
Text Label 2700 3950 0    50   ~ 0
DBUS2
Text Label 2700 2350 0    50   ~ 0
DBUS5
Entry Wire Line
	3050 2150 3150 2250
Entry Wire Line
	3050 2250 3150 2350
Text Label 2700 2450 0    50   ~ 0
SYSCLK
Text Label 2700 2150 0    50   ~ 0
DBUS6
Text Label 2700 4150 0    50   ~ 0
T11
Text Label 2700 4050 0    50   ~ 0
IO
Text Label 2700 4250 0    50   ~ 0
ROMCLK
Entry Wire Line
	3050 3350 3150 3450
Wire Wire Line
	2600 3350 3050 3350
Wire Wire Line
	2600 3550 3050 3550
Entry Wire Line
	3050 3550 3150 3650
Text Label 2700 3550 0    50   ~ 0
UART_RX
Entry Wire Line
	3050 3650 3150 3750
Wire Wire Line
	2600 3650 3050 3650
Text Label 2700 3650 0    50   ~ 0
UART_TX
Text Label 2700 2050 0    50   ~ 0
RW_EN
Text Label 2700 1950 0    50   ~ 0
RW
Text Label 2700 2250 0    50   ~ 0
~READY
Text Label 2700 3050 0    50   ~ 0
~INT
Text Label 2700 3150 0    50   ~ 0
M1
Wire Wire Line
	2600 2150 3050 2150
Wire Wire Line
	3050 2250 2600 2250
Wire Wire Line
	2600 2350 3050 2350
Wire Wire Line
	2600 2450 3050 2450
Entry Wire Line
	3050 2350 3150 2450
Entry Wire Line
	3050 2450 3150 2550
Wire Wire Line
	4350 3200 4600 3200
Wire Wire Line
	4350 3300 4600 3300
Wire Wire Line
	4350 3400 4600 3400
Wire Wire Line
	4350 3500 4600 3500
Entry Wire Line
	4600 3200 4700 3300
Entry Wire Line
	4600 3300 4700 3400
Entry Wire Line
	4600 3400 4700 3500
Entry Wire Line
	4600 3500 4700 3600
Text Label 2700 3350 0    50   ~ 0
~RESET
Text Label 4350 3500 0    50   ~ 0
~RESET
Text Label 4350 3400 0    50   ~ 0
DBUS5
Wire Wire Line
	7750 3350 7450 3350
Wire Wire Line
	7750 3450 7450 3450
Wire Wire Line
	7750 3550 7450 3550
Entry Wire Line
	7350 3450 7450 3350
Entry Wire Line
	7350 3550 7450 3450
Entry Wire Line
	7350 3650 7450 3550
Text Label 7450 3350 0    50   ~ 0
UART_RX
Text Label 7450 3450 0    50   ~ 0
UART_TX
Text Label 7450 3550 0    50   ~ 0
SYSCLK
$Comp
L Connector:Barrel_Jack_MountingPin J2
U 1 1 5DEBC086
P 9600 5450
F 0 "J2" H 9370 5322 50  0000 R CNN
F 1 "Barrel_Jack_MountingPin" H 9370 5413 50  0000 R CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-063AH_Horizontal" H 9650 5410 50  0001 C CNN
F 3 "~" H 9650 5410 50  0001 C CNN
	1    9600 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5DECD435
P 10000 3700
F 0 "RV1" H 10200 3800 50  0000 R CNN
F 1 "200k" H 10250 3900 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 10000 3700 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Bourns/3296W-1-204LF?qs=sGAEpiMZZMvygUB3GLcD7sSg8po3Zpo3lxHLKmaw3KY%3D" H 10000 3700 50  0001 C CNN
	1    10000 3700
	1    0    0    1   
$EndComp
$Comp
L power:-5V #PWR0102
U 1 1 5DED8048
P 9700 3300
F 0 "#PWR0102" H 9700 3400 50  0001 C CNN
F 1 "-5V" H 9715 3473 50  0000 C CNN
F 2 "" H 9700 3300 50  0001 C CNN
F 3 "" H 9700 3300 50  0001 C CNN
	1    9700 3300
	1    0    0    -1  
$EndComp
Entry Wire Line
	10100 4500 10200 4600
Text Label 9900 4500 0    50   ~ 0
OSC
$Comp
L Device:D_Schottky D1
U 1 1 5DF10DBF
P 9400 1950
F 0 "D1" H 9400 2150 50  0000 C CNN
F 1 "D_Schottky" H 9550 2050 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P2.54mm_Vertical_AnodeUp" H 9400 1950 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/STMicroelectronics/1N5817?qs=sGAEpiMZZMtQ8nqTKtFS%2FD9SVzsgHTKGsrEMHLFTAoc%3D" H 9400 1950 50  0001 C CNN
	1    9400 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DECCC0F
P 9700 3950
F 0 "C2" H 9815 3996 50  0000 L CNN
F 1 "10p" H 9815 3905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9700 3950 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/TDK/FG28C0G1H100DNT00?qs=sGAEpiMZZMt3KoXD5rJ2N3%2FB4IwRhPfO5Uprpuqi7TN%2FBpAp6IHKEw%3D%3D" H 9700 3950 50  0001 C CNN
	1    9700 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C4
U 1 1 5DF125E0
P 7500 2200
F 0 "C4" H 7615 2246 50  0000 L CNN
F 1 "10u" H 7615 2155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 7500 2200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Nichicon/UPW1E100MDD6?qs=sGAEpiMZZMtZ1n0r9vR22RH2kZvTh%252B0aATLghPFFGt0%3D" H 7500 2200 50  0001 C CNN
	1    7500 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DF130BA
P 9050 1700
F 0 "C3" H 9165 1746 50  0000 L CNN
F 1 "1u" H 9165 1655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 9050 1700 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/TDK/FG28X7R1E105KRT00?qs=sGAEpiMZZMt3KoXD5rJ2N3%2FB4IwRhPfObhJhR9ZrZngGqP3K%2FtY82g%3D%3D" H 9050 1700 50  0001 C CNN
	1    9050 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Iron L1
U 1 1 5DF14652
P 9250 2200
F 0 "L1" H 9338 2246 50  0000 L CNN
F 1 "10uH" H 9338 2155 50  0000 L CNN
F 2 "Inductor_THT:L_Axial_L11.0mm_D4.5mm_P15.24mm_Horizontal_Fastron_MECC" H 9250 2200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/JW-Miller/9250A-103-RC?qs=sGAEpiMZZMsg%252By3WlYCkUxu5WKw4EViAndDa%2FiYqH4s%3D" H 9250 2200 50  0001 C CNN
	1    9250 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5DF476FD
P 8850 1200
F 0 "#PWR0106" H 8850 1050 50  0001 C CNN
F 1 "+5V" H 8865 1373 50  0000 C CNN
F 2 "" H 8850 1200 50  0001 C CNN
F 3 "" H 8850 1200 50  0001 C CNN
	1    8850 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2050 9050 2050
$Comp
L power:GND #PWR0107
U 1 1 5DF4C3F0
P 9050 2450
F 0 "#PWR0107" H 9050 2200 50  0001 C CNN
F 1 "GND" H 9055 2277 50  0000 C CNN
F 2 "" H 9050 2450 50  0001 C CNN
F 3 "" H 9050 2450 50  0001 C CNN
	1    9050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1950 9550 2700
Wire Wire Line
	9550 2700 8850 2700
Wire Wire Line
	8850 2700 8850 2150
Connection ~ 9550 1950
$Comp
L power:-5V #PWR0108
U 1 1 5DF6A2D8
P 9950 1950
F 0 "#PWR0108" H 9950 2050 50  0001 C CNN
F 1 "-5V" V 9965 2078 50  0000 L CNN
F 2 "" H 9950 1950 50  0001 C CNN
F 3 "" H 9950 1950 50  0001 C CNN
	1    9950 1950
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C6
U 1 1 5DF6EAB9
P 9800 2200
F 0 "C6" H 9685 2154 50  0000 R CNN
F 1 "100u" H 9685 2245 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 9800 2200 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Nichicon/UVR1A101MDD6?qs=UBiR96IgLrSPbXe39cac9Q%3D%3D" H 9800 2200 50  0001 C CNN
	1    9800 2200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5DF6F651
P 9800 2450
F 0 "#PWR0109" H 9800 2200 50  0001 C CNN
F 1 "GND" H 9805 2277 50  0000 C CNN
F 2 "" H 9800 2450 50  0001 C CNN
F 3 "" H 9800 2450 50  0001 C CNN
	1    9800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1950 7500 1950
$Comp
L power:GND #PWR0110
U 1 1 5DF79222
P 7500 2450
F 0 "#PWR0110" H 7500 2200 50  0001 C CNN
F 1 "GND" H 7505 2277 50  0000 C CNN
F 2 "" H 7500 2450 50  0001 C CNN
F 3 "" H 7500 2450 50  0001 C CNN
	1    7500 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5DF7E68D
P 9950 1250
F 0 "#PWR0111" H 9950 1000 50  0001 C CNN
F 1 "GND" H 9955 1077 50  0000 C CNN
F 2 "" H 9950 1250 50  0001 C CNN
F 3 "" H 9950 1250 50  0001 C CNN
	1    9950 1250
	0    -1   1    0   
$EndComp
Text Label 7550 1950 0    50   ~ 0
REF
NoConn ~ 7850 2050
NoConn ~ 7850 2150
$Comp
L Device:C C7
U 1 1 5DFA6FE9
P 2350 1300
F 0 "C7" H 2465 1346 50  0000 L CNN
F 1 "47u" H 2465 1255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2350 1300 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/TDK/FG26X5R1E476MRT06?qs=sGAEpiMZZMt3KoXD5rJ2NzrcpyijU5LS6yornfz2rM6NybHv36ftSw%3D%3D" H 2350 1300 50  0001 C CNN
	1    2350 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5DFA7866
P 2500 1300
F 0 "#PWR0112" H 2500 1050 50  0001 C CNN
F 1 "GND" H 2505 1127 50  0000 C CNN
F 2 "" H 2500 1300 50  0001 C CNN
F 3 "" H 2500 1300 50  0001 C CNN
	1    2500 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 1250 2000 1300
$Comp
L Regulator_Linear:LM7805_TO220 U4
U 1 1 5DFF5606
P 5850 3300
F 0 "U4" H 5850 3542 50  0000 C CNN
F 1 "LM7805_TO220" H 5850 3451 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 5850 3525 50  0001 C CIN
F 3 "https://www.mouser.se/ProductDetail/Texas-Instruments/LM7805CT-NOPB?qs=sGAEpiMZZMtUqDgmOWBjgBeg5pzg%2F1aQ1zF1gFoZCvY%3D" H 5850 3250 50  0001 C CNN
	1    5850 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C9
U 1 1 5DFF7AD7
P 6250 3450
F 0 "C9" H 6350 3400 50  0000 L CNN
F 1 "0.1u" H 6350 3500 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 6288 3300 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Nichicon/USP1HR33MDD?qs=sGAEpiMZZMsh%252B1woXyUXj3SSjkwXH80UQwbXontCI3A%3D" H 6250 3450 50  0001 C CNN
	1    6250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3300 6250 3300
Text Label 5200 3300 0    50   ~ 0
VIN
$Comp
L power:+5V #PWR0115
U 1 1 5E010148
P 6450 3300
F 0 "#PWR0115" H 6450 3150 50  0001 C CNN
F 1 "+5V" V 6465 3428 50  0000 L CNN
F 2 "" H 6450 3300 50  0001 C CNN
F 3 "" H 6450 3300 50  0001 C CNN
	1    6450 3300
	0    1    1    0   
$EndComp
Connection ~ 6250 3300
Wire Wire Line
	6250 3300 6400 3300
$Comp
L power:GND #PWR0116
U 1 1 5E015997
P 5850 3700
F 0 "#PWR0116" H 5850 3450 50  0001 C CNN
F 1 "GND" H 5855 3527 50  0000 C CNN
F 2 "" H 5850 3700 50  0001 C CNN
F 3 "" H 5850 3700 50  0001 C CNN
	1    5850 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C8
U 1 1 5DFF742E
P 5450 3450
F 0 "C8" H 5350 3400 50  0000 R CNN
F 1 "0.33u" H 5350 3500 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 5488 3300 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Nichicon/USP1HR33MDD?qs=sGAEpiMZZMsh%252B1woXyUXj3SSjkwXH80UQwbXontCI3A%3D" H 5450 3450 50  0001 C CNN
	1    5450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5550 9000 5550
Text Label 9050 5550 0    50   ~ 0
VIN
Wire Wire Line
	9300 5350 9000 5350
Text Label 9050 5350 0    50   ~ 0
GND
Wire Wire Line
	9850 4500 10100 4500
Wire Wire Line
	9700 3300 9700 3450
NoConn ~ 8950 3350
NoConn ~ 8950 3450
NoConn ~ 7750 3650
$Comp
L power:+5V #PWR0117
U 1 1 5DE71BAE
P 2000 1250
F 0 "#PWR0117" H 2000 1100 50  0001 C CNN
F 1 "+5V" H 2015 1423 50  0000 C CNN
F 2 "" H 2000 1250 50  0001 C CNN
F 3 "" H 2000 1250 50  0001 C CNN
	1    2000 1250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS138 U5
U 1 1 5DE728BA
P 6350 1850
F 0 "U5" H 6450 2400 50  0000 C CNN
F 1 "74LS138" H 6550 2300 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6350 1850 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Texas-Instruments/SN74LS138N?qs=sGAEpiMZZMtxONTBFIcRfpKvrGTByBdiQjlbb3Ynr4s%3D" H 6350 1850 50  0001 C CNN
	1    6350 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 5DE734F1
P 6350 1250
F 0 "#PWR0119" H 6350 1100 50  0001 C CNN
F 1 "+5V" H 6365 1423 50  0000 C CNN
F 2 "" H 6350 1250 50  0001 C CNN
F 3 "" H 6350 1250 50  0001 C CNN
	1    6350 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5DE739AF
P 6350 2550
F 0 "#PWR0120" H 6350 2300 50  0001 C CNN
F 1 "GND" H 6355 2377 50  0000 C CNN
F 2 "" H 6350 2550 50  0001 C CNN
F 3 "" H 6350 2550 50  0001 C CNN
	1    6350 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5DE77FDA
P 5750 1750
F 0 "#PWR0121" H 5750 1500 50  0001 C CNN
F 1 "GND" H 5755 1577 50  0000 C CNN
F 2 "" H 5750 1750 50  0001 C CNN
F 3 "" H 5750 1750 50  0001 C CNN
	1    5750 1750
	1    0    0    -1  
$EndComp
Text Label 5750 1550 0    50   ~ 0
RW
Text Label 6900 1650 0    50   ~ 0
~RS
Text Label 6900 1550 0    50   ~ 0
~WS
Wire Wire Line
	5500 1950 5250 1950
Text Label 5250 1950 0    50   ~ 0
RW_EN
Text Notes 5300 1350 0    50   ~ 0
RW low = ~WS~ low\nRW high = ~RS~ low
NoConn ~ 6850 1750
NoConn ~ 6850 1850
NoConn ~ 6850 1950
NoConn ~ 6850 2050
NoConn ~ 6850 2150
NoConn ~ 6850 2250
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5DEC80E7
P 5050 2050
F 0 "J3" H 4968 1725 50  0000 C CNN
F 1 "Conn_01x03" H 4968 1816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5050 2050 50  0001 C CNN
F 3 "~" H 5050 2050 50  0001 C CNN
	1    5050 2050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 5DF0F1B5
P 9400 3900
F 0 "J4" H 9480 3942 50  0000 L CNN
F 1 "ROMCLK" H 9480 3851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9400 3900 50  0001 C CNN
F 3 "~" H 9400 3900 50  0001 C CNN
	1    9400 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 3700 9400 3200
Text Label 9400 3300 3    50   ~ 0
ROMCLK
Entry Wire Line
	5850 4700 5950 4800
Entry Wire Line
	5850 4800 5950 4900
Entry Wire Line
	5850 5100 5950 5200
Entry Wire Line
	5850 5300 5950 5400
Entry Wire Line
	5850 5600 5950 5700
Entry Wire Line
	5850 5700 5950 5800
Entry Wire Line
	5850 5800 5950 5900
Entry Wire Line
	5850 5900 5950 6000
Entry Wire Line
	5850 6000 5950 6100
Entry Wire Line
	5850 5000 5950 5100
Entry Wire Line
	5850 4900 5950 5000
Entry Wire Line
	5850 5200 5950 5300
Entry Wire Line
	5850 5400 5950 5500
Wire Wire Line
	5850 4700 5500 4700
Wire Wire Line
	5850 4800 5500 4800
Wire Wire Line
	5850 4900 5500 4900
Wire Wire Line
	5500 5000 5850 5000
Wire Wire Line
	5500 5200 5850 5200
Wire Wire Line
	5500 5400 5850 5400
Wire Wire Line
	5850 5700 5500 5700
Wire Wire Line
	5850 5800 5500 5800
Wire Wire Line
	5850 5900 5500 5900
Wire Wire Line
	5850 6000 5500 6000
Text Label 3700 5700 0    50   ~ 0
GND
Text Label 3700 5100 0    50   ~ 0
+5V
Text Label 3700 5000 0    50   ~ 0
-5V
Text Label 5550 5000 0    50   ~ 0
ADD2
Text Label 3700 4800 0    50   ~ 0
ADD1
Text Label 5550 5400 0    50   ~ 0
ADD8
Text Label 5550 5200 0    50   ~ 0
ADD4
Entry Wire Line
	3550 4900 3650 4800
Wire Wire Line
	4000 4800 3650 4800
Text Label 3700 5200 0    50   ~ 0
OSC
Text Label 5550 5900 0    50   ~ 0
M1
Text Label 5550 6000 0    50   ~ 0
M0
NoConn ~ 5500 5500
NoConn ~ 4000 5600
Text Label 5550 4800 0    50   ~ 0
~WS
Text Label 5550 4700 0    50   ~ 0
~RS
Text Label 5550 5800 0    50   ~ 0
~INT
Text Label 5550 5700 0    50   ~ 0
~READY
Text Label 3700 5500 0    50   ~ 0
IO
Text Label 3700 5300 0    50   ~ 0
T11
Text Label 3700 4900 0    50   ~ 0
ROMCLK
Text Label 3700 4700 0    50   ~ 0
DBUS7
Text Label 5550 4900 0    50   ~ 0
DBUS6
Text Label 5550 5100 0    50   ~ 0
DBUS5
Text Label 5550 5300 0    50   ~ 0
DBUS4
Text Label 5550 5600 0    50   ~ 0
DBUS3
Text Label 3700 5800 0    50   ~ 0
DBUS2
Text Label 3700 5900 0    50   ~ 0
DBUS1
Text Label 3700 6000 0    50   ~ 0
DBUS0
Entry Wire Line
	3550 6100 3650 6000
Entry Wire Line
	3550 6000 3650 5900
Entry Wire Line
	3550 5900 3650 5800
Entry Wire Line
	3550 5800 3650 5700
Entry Wire Line
	3550 5600 3650 5500
Entry Wire Line
	3550 5500 3650 5400
Entry Wire Line
	3550 5400 3650 5300
Entry Wire Line
	3550 5300 3650 5200
Entry Wire Line
	3550 5200 3650 5100
Entry Wire Line
	3550 5100 3650 5000
Entry Wire Line
	3550 5000 3650 4900
Entry Wire Line
	3550 4800 3650 4700
Wire Wire Line
	5850 5600 5500 5600
Wire Wire Line
	5850 5300 5500 5300
Wire Wire Line
	5850 5100 5500 5100
Wire Wire Line
	4000 6000 3650 6000
Wire Wire Line
	4000 5900 3650 5900
Wire Wire Line
	4000 5800 3650 5800
Wire Wire Line
	4000 5700 3650 5700
Wire Wire Line
	4000 5500 3650 5500
Wire Wire Line
	4000 5400 3650 5400
Wire Wire Line
	4000 5300 3650 5300
Wire Wire Line
	4000 5200 3650 5200
Wire Wire Line
	4000 5100 3650 5100
Wire Wire Line
	4000 5000 3650 5000
Wire Wire Line
	4000 4900 3650 4900
Wire Wire Line
	4000 4700 3650 4700
$Comp
L TMS5220:TMS5220 U2
U 1 1 5DDD1D51
P 4000 4700
F 0 "U2" H 4750 4990 60  0000 C CNN
F 1 "TMS5220" H 4750 4884 60  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 4200 4750 60  0001 L CNN
F 3 "https://www.mouser.se/ProductDetail/3M-Electronic-Solutions-Division/4828-6000-CP?qs=sGAEpiMZZMs%2FSh%2Fkjph1tvt1%2FmEPT%2FXoFUUv0bvk4oI%3D" H 4200 4550 60  0001 L CNN
	1    4000 4700
	1    0    0    -1  
$EndComp
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5DE0483B
P 750 7550
F 0 "#LOGO1" H 750 7825 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 750 7325 50  0001 C CNN
F 2 "" H 750 7550 50  0001 C CNN
F 3 "~" H 750 7550 50  0001 C CNN
	1    750  7550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5DE0B7AE
P 4250 1400
F 0 "D3" V 4204 1498 50  0000 L CNN
F 1 "LED" V 4295 1498 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 4250 1400 50  0001 C CNN
F 3 "~" V 4250 1400 50  0001 C CNN
	1    4250 1400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5DE0C26B
P 3900 1400
F 0 "D2" V 3950 1650 50  0000 R CNN
F 1 "LED" V 3850 1650 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" V 3900 1400 50  0001 C CNN
F 3 "~" V 3900 1400 50  0001 C CNN
	1    3900 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5DE19CD9
P 4250 1700
F 0 "R2" H 4320 1746 50  0000 L CNN
F 1 "220" H 4320 1655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4180 1700 50  0001 C CNN
F 3 "~" H 4250 1700 50  0001 C CNN
	1    4250 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DE1A844
P 3900 1700
F 0 "R1" H 3750 1750 50  0000 L CNN
F 1 "220" H 3700 1650 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3830 1700 50  0001 C CNN
F 3 "~" H 3900 1700 50  0001 C CNN
	1    3900 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5DE1EFD7
P 4250 1850
F 0 "#PWR0124" H 4250 1600 50  0001 C CNN
F 1 "GND" H 4255 1677 50  0000 C CNN
F 2 "" H 4250 1850 50  0001 C CNN
F 3 "" H 4250 1850 50  0001 C CNN
	1    4250 1850
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR0125
U 1 1 5DE1F52F
P 4250 1250
F 0 "#PWR0125" H 4250 1350 50  0001 C CNN
F 1 "-5V" H 4265 1423 50  0000 C CNN
F 2 "" H 4250 1250 50  0001 C CNN
F 3 "" H 4250 1250 50  0001 C CNN
	1    4250 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0126
U 1 1 5DE1FAEC
P 3900 1250
F 0 "#PWR0126" H 3900 1100 50  0001 C CNN
F 1 "+5V" H 3915 1423 50  0000 C CNN
F 2 "" H 3900 1250 50  0001 C CNN
F 3 "" H 3900 1250 50  0001 C CNN
	1    3900 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5DE20070
P 3900 1850
F 0 "#PWR0127" H 3900 1600 50  0001 C CNN
F 1 "GND" H 3905 1677 50  0000 C CNN
F 2 "" H 3900 1850 50  0001 C CNN
F 3 "" H 3900 1850 50  0001 C CNN
	1    3900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3650 8950 3650
Wire Wire Line
	9050 3750 9050 3650
Wire Wire Line
	5100 3300 5450 3300
Wire Wire Line
	5850 3600 5850 3700
$Comp
L power:GND #PWR0113
U 1 1 5DE1F729
P 5450 3700
F 0 "#PWR0113" H 5450 3450 50  0001 C CNN
F 1 "GND" H 5455 3527 50  0000 C CNN
F 2 "" H 5450 3700 50  0001 C CNN
F 3 "" H 5450 3700 50  0001 C CNN
	1    5450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3600 5450 3700
$Comp
L power:GND #PWR0114
U 1 1 5DE24014
P 6250 3700
F 0 "#PWR0114" H 6250 3450 50  0001 C CNN
F 1 "GND" H 6255 3527 50  0000 C CNN
F 2 "" H 6250 3700 50  0001 C CNN
F 3 "" H 6250 3700 50  0001 C CNN
	1    6250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3600 6250 3700
$Comp
L Device:CP1 C5
U 1 1 5DF1174A
P 9450 1250
F 0 "C5" H 9565 1296 50  0000 L CNN
F 1 "47u" H 9565 1205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 9450 1250 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/Nichicon/UPW1A470MDD6TP?qs=sGAEpiMZZMtZ1n0r9vR22UwyiKSDS%252BfFcZfRXVU8ss8%3D" H 9450 1250 50  0001 C CNN
	1    9450 1250
	0    -1   1    0   
$EndComp
Wire Wire Line
	10000 3950 10000 3850
Wire Wire Line
	9850 4350 9850 4500
Wire Wire Line
	10150 3450 10150 3700
Wire Wire Line
	7500 2050 7500 1950
Wire Wire Line
	7500 2350 7500 2450
Wire Wire Line
	9550 1950 9800 1950
Wire Wire Line
	9800 2450 9800 2350
Wire Wire Line
	9800 2050 9800 1950
Connection ~ 9800 1950
Wire Wire Line
	9800 1950 9900 1950
Wire Wire Line
	9050 2050 9050 2350
Wire Wire Line
	9250 2350 9050 2350
Connection ~ 9050 2350
Wire Wire Line
	9050 2350 9050 2450
Wire Wire Line
	9250 2050 9250 1950
Wire Wire Line
	9050 1550 8850 1550
Connection ~ 8850 1550
Wire Wire Line
	8850 1550 8850 1850
Wire Wire Line
	9050 1850 9050 2050
Connection ~ 9050 2050
Connection ~ 9250 1950
Wire Wire Line
	8850 1950 9250 1950
Wire Notes Line
	7300 850  10300 850 
Text Notes 7350 950  0    50   ~ 0
Negative 5 Volt power supply
Entry Wire Line
	5500 1950 5600 1850
Entry Wire Line
	5600 1650 5700 1550
Wire Wire Line
	5850 1550 5700 1550
Wire Notes Line
	4850 850  4850 2800
Entry Wire Line
	7050 1550 7150 1450
Entry Wire Line
	7050 1650 7150 1550
Wire Wire Line
	6850 1650 7050 1650
Wire Wire Line
	7050 1550 6850 1550
Wire Wire Line
	5850 1650 5750 1650
Wire Wire Line
	5750 1650 5750 1750
Wire Wire Line
	5850 1750 5750 1750
Connection ~ 5750 1750
Wire Wire Line
	5850 2150 5750 2150
Wire Wire Line
	5750 2150 5750 2250
Wire Wire Line
	5850 2250 5750 2250
Text Notes 4900 950  0    50   ~ 0
Control signal controller and programming bypass
Wire Notes Line
	3400 850  3400 2150
Wire Notes Line
	3400 2150 4800 2150
Wire Notes Line
	4800 2150 4800 850 
Wire Notes Line
	4800 850  3400 850 
Text Notes 3450 950  0    50   ~ 0
Power supply indicators
Text Notes 3450 2500 0    50   ~ 0
Atmega programming header
Entry Wire Line
	5000 3400 5100 3300
Wire Wire Line
	5450 3300 5550 3300
Connection ~ 5450 3300
Wire Notes Line
	4850 4050 6950 4050
Wire Notes Line
	4850 2850 6950 2850
Wire Notes Line
	4850 2850 4850 4050
Wire Notes Line
	6950 2850 6950 4050
Text Notes 4900 2950 0    50   ~ 0
Positive 5 Volt power supply
Wire Notes Line
	10300 4700 9300 4700
Wire Notes Line
	9300 2850 10300 2850
Text Notes 9350 2950 0    50   ~ 0
TMS Oscillator tuning
Wire Notes Line
	9250 2850 9250 4050
Text Notes 7350 2950 0    50   ~ 0
USB interface
NoConn ~ 1400 1850
Wire Wire Line
	2200 1300 2000 1300
Wire Notes Line
	3350 4850 1250 4850
Wire Notes Line
	1250 4850 1250 850 
Wire Notes Line
	1250 850  3350 850 
Text Notes 1300 950  0    50   ~ 0
Atmega uCPU
Wire Notes Line
	3400 6350 3400 4100
Wire Notes Line
	3400 4100 6100 4100
Wire Notes Line
	6100 4100 6100 6350
Wire Notes Line
	3400 6350 6100 6350
Text Notes 3500 4250 0    50   ~ 0
TMS5220 Voice Synthesis Processor
Connection ~ 2000 1300
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5DE18986
P 4350 2750
F 0 "J5" H 4430 2742 50  0000 L CNN
F 1 "Conn_01x02" H 4150 2550 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4350 2750 50  0001 C CNN
F 3 "~" H 4350 2750 50  0001 C CNN
	1    4350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2850 3850 2900
Text Label 3850 2850 0    50   ~ 0
ISPVDD
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 5DDDE1BE
P 3950 3400
F 0 "J1" H 4200 3100 50  0000 R CNN
F 1 "AVR-ISP-6" V 3650 3650 50  0000 R CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" V 3700 3450 50  0001 C CNN
F 3 "https://www.mouser.se/ProductDetail/3M-Electronic-Solutions-Division/30306-6002HB?qs=sGAEpiMZZMs%252BGHln7q6pmwu5ra4CY41iME2E1EV0sE0%3D" H 2675 2850 50  0001 C CNN
	1    3950 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2850 4150 2850
$Comp
L power:+5V #PWR0128
U 1 1 5DF1143C
P 7850 1850
F 0 "#PWR0128" H 7850 1700 50  0001 C CNN
F 1 "+5V" H 7865 2023 50  0000 C CNN
F 2 "" H 7850 1850 50  0001 C CNN
F 3 "" H 7850 1850 50  0001 C CNN
	1    7850 1850
	1    0    0    -1  
$EndComp
Text Label 9150 3550 1    50   ~ 0
+5V_HOST
Wire Wire Line
	2000 1300 2000 1550
$Comp
L power:+5V #PWR0103
U 1 1 5DE5AF7D
P 2100 1550
F 0 "#PWR0103" H 2100 1400 50  0001 C CNN
F 1 "+5V" H 2115 1723 50  0000 C CNN
F 2 "" H 2100 1550 50  0001 C CNN
F 3 "" H 2100 1550 50  0001 C CNN
	1    2100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3150 9150 3550
Wire Wire Line
	8950 3550 9150 3550
Entry Wire Line
	9050 3050 9150 3150
Entry Wire Line
	9400 3200 9500 3100
$Comp
L Device:R R3
U 1 1 5E152B01
P 10000 4100
F 0 "R3" H 10070 4146 50  0000 L CNN
F 1 "47k" H 10070 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 9930 4100 50  0001 C CNN
F 3 "~" H 10000 4100 50  0001 C CNN
	1    10000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4350 9850 4350
Wire Wire Line
	10000 4350 10000 4250
Connection ~ 9850 4350
Wire Wire Line
	9850 4350 10000 4350
Wire Notes Line
	10300 2850 10300 4700
Wire Notes Line
	9300 2850 9300 4700
Wire Wire Line
	9700 4100 9700 4350
Wire Wire Line
	9700 3450 9700 3800
Text Label 3700 5400 0    50   ~ 0
SPKOUT
$Comp
L Device:R R4
U 1 1 5E1621FA
P 7750 5200
F 0 "R4" H 7820 5246 50  0000 L CNN
F 1 "3k3" H 7820 5155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7680 5200 50  0001 C CNN
F 3 "~" H 7750 5200 50  0001 C CNN
	1    7750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5050 7750 4900
Wire Wire Line
	7750 5350 7750 5600
$Comp
L power:GND #PWR0129
U 1 1 5E16F946
P 7750 5600
F 0 "#PWR0129" H 7750 5350 50  0001 C CNN
F 1 "GND" H 7755 5427 50  0000 C CNN
F 2 "" H 7750 5600 50  0001 C CNN
F 3 "" H 7750 5600 50  0001 C CNN
	1    7750 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4900 7750 4900
Connection ~ 7750 4900
Wire Wire Line
	7750 4900 8200 4900
Entry Wire Line
	8200 4900 8300 5000
Entry Wire Line
	7200 5000 7300 4900
Text Label 7900 4900 0    50   ~ 0
ADCIN
Text Label 7400 4900 0    50   ~ 0
SPKOUT
Text Label 4350 3300 0    50   ~ 0
DBUS6
Text Label 2700 2850 0    50   ~ 0
DBUS3
Text Label 4350 3200 0    50   ~ 0
~READY
Text Label 2700 2950 0    50   ~ 0
ADCIN
Text Label 2700 2750 0    50   ~ 0
DBUS4
Text Label 2700 3250 0    50   ~ 0
M0
$Comp
L Device:R R5
U 1 1 5E1AB25A
P 5500 2300
F 0 "R5" H 5350 2350 50  0000 L CNN
F 1 "10k" H 5300 2250 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 5430 2300 50  0001 C CNN
F 3 "~" H 5500 2300 50  0001 C CNN
	1    5500 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5E1AB414
P 5500 2550
F 0 "#PWR0122" H 5500 2300 50  0001 C CNN
F 1 "GND" H 5505 2377 50  0000 C CNN
F 2 "" H 5500 2550 50  0001 C CNN
F 3 "" H 5500 2550 50  0001 C CNN
	1    5500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2050 5500 2050
Wire Wire Line
	5500 2450 5500 2500
Wire Wire Line
	5250 2150 5250 2500
Wire Wire Line
	5250 2500 5500 2500
Connection ~ 5500 2500
Wire Wire Line
	5500 2500 5500 2550
Wire Wire Line
	5500 2500 5750 2500
Wire Wire Line
	5750 2500 5750 2250
Connection ~ 5750 2250
Wire Wire Line
	5500 2150 5500 2050
Connection ~ 5500 2050
Wire Wire Line
	5500 2050 5850 2050
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 5E1D4A36
P 6400 2950
F 0 "J6" V 6364 2862 50  0000 R CNN
F 1 "+5V" V 6273 2862 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6400 2950 50  0001 C CNN
F 3 "~" H 6400 2950 50  0001 C CNN
	1    6400 2950
	0    -1   -1   0   
$EndComp
Connection ~ 6400 3300
Wire Wire Line
	6400 3300 6450 3300
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 5E1F4DEB
P 9900 1750
F 0 "J7" V 9864 1662 50  0000 R CNN
F 1 "-5V" V 9773 1662 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9900 1750 50  0001 C CNN
F 3 "~" H 9900 1750 50  0001 C CNN
	1    9900 1750
	0    -1   -1   0   
$EndComp
Connection ~ 9900 1950
Wire Wire Line
	9900 1950 9950 1950
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5E1FC026
P 9150 5950
F 0 "J8" H 9230 5992 50  0000 L CNN
F 1 "GND" H 9230 5901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9150 5950 50  0001 C CNN
F 3 "~" H 9150 5950 50  0001 C CNN
	1    9150 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5E1FCDEC
P 8950 6200
F 0 "#PWR0123" H 8950 5950 50  0001 C CNN
F 1 "GND" H 8955 6027 50  0000 C CNN
F 2 "" H 8950 6200 50  0001 C CNN
F 3 "" H 8950 6200 50  0001 C CNN
	1    8950 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 6200 8950 6050
Connection ~ 8950 5950
Wire Wire Line
	8950 5950 8950 5850
Connection ~ 8950 6050
Wire Wire Line
	8950 6050 8950 5950
$Comp
L power:+5V #PWR0118
U 1 1 5DE72049
P 3850 2750
F 0 "#PWR0118" H 3850 2600 50  0001 C CNN
F 1 "+5V" H 3865 2923 50  0000 C CNN
F 2 "" H 3850 2750 50  0001 C CNN
F 3 "" H 3850 2750 50  0001 C CNN
	1    3850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2750 4150 2750
Wire Notes Line
	3400 2400 4800 2400
Wire Notes Line
	4800 2400 4800 4050
Wire Notes Line
	4800 4050 3400 4050
Wire Notes Line
	3400 4050 3400 2400
Wire Notes Line
	4850 850  7250 850 
Wire Notes Line
	4850 2800 7250 2800
Wire Notes Line
	7250 850  7250 2800
Wire Notes Line
	7300 2800 10300 2800
Wire Notes Line
	10300 2800 10300 850 
Wire Notes Line
	7300 2800 7300 850 
Wire Notes Line
	7300 2850 7300 4050
Wire Notes Line
	7300 4050 9250 4050
Wire Notes Line
	7300 2850 9250 2850
Connection ~ 9700 3450
Wire Wire Line
	9700 3450 10150 3450
Wire Wire Line
	6400 3150 6400 3300
Wire Wire Line
	8850 1200 8850 1250
Connection ~ 8850 1250
Wire Wire Line
	8850 1250 8850 1550
Wire Wire Line
	8850 1250 9300 1250
Wire Wire Line
	9600 1250 9950 1250
Wire Notes Line
	3350 850  3350 5050
Text Label 2700 1850 0    50   ~ 0
DBUS7
Wire Bus Line
	7200 4850 7200 5050
Wire Bus Line
	8300 4850 8300 5050
Wire Bus Line
	9500 3050 9500 3200
Wire Bus Line
	9000 3050 9150 3050
Wire Bus Line
	5000 3250 5000 3450
Wire Bus Line
	10200 4500 10200 4650
Wire Bus Line
	5600 1550 5600 1900
Wire Bus Line
	7150 1400 7150 1650
Wire Bus Line
	7350 3250 7350 3750
Wire Bus Line
	4700 3150 4700 3700
Wire Bus Line
	5950 4600 5950 6250
Wire Bus Line
	3550 4600 3550 6250
Wire Bus Line
	3150 1850 3150 4450
$EndSCHEMATC
