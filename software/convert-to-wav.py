#!/usr/bin/env python3

import math
import sys
import wave


def twos_comp(val, bits):
    if (val & (1 << (bits - 1))) != 0:
        val = val - (1 << bits)
    return val


samples = []

try:
    while True:
        data = sys.stdin.buffer.read(1)
        low = (("00000000" + bin(data[0])[2:])[-8:])[::-1]
        data = sys.stdin.buffer.read(1)
        high = (("00" + bin(data[0])[2:])[-2:])[::-1]
        val = twos_comp(int(high+low, 2), 10)
        samples.append(val)
except:
    pass

# Calculate normalization factor.
m = math.floor(32767/abs(max(samples, key=abs)))

with wave.open('sound.wav', 'w') as obj:
    obj.setnchannels(1)
    obj.setsampwidth(2)
    obj.setframerate(8000)

    for val in samples:
        val *= m
        val = val.to_bytes(2, 'little', signed=True)
        obj.writeframesraw(val)
