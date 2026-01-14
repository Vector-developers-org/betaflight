#!/bin/sh

VERSION="2025.12.1"

objcopy --input-target=ihex --output-target=binary obj/betaflight_${VERSION}_STM32H743_VECTOR_H7.hex obj/betaflight_${VERSION}_STM32H743_VECTOR_H7.bin
dfu-util -a 0 -i 0 -s 0x08000000:leave -D obj/betaflight_${VERSION}_STM32H743_VECTOR_H7.bin

