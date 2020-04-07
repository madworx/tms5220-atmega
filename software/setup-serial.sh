#!/bin/sh

set -x 

setserial -a /dev/ttyUSB0 spd_cust
setserial -a /dev/ttyUSB0 divisor 96
socat TCP-L:1147 FILE:/dev/ttyUSB0,b38400,raw,echo=0 &
sleep 0.5
