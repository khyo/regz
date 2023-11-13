#!/bin/bash
/home/xerous/.config/subpack/zig-0.11.0/zig build && \
zig-out/bin/regz STM32G474xx.svd > stm32g4.zig
