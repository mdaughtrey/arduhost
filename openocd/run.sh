#!/bin/bash

# Run globally installed bin
openocd -f interface/raspberrypi2-native.cfg -f target/esp32.cfg -c "adapter_khz 1000"
# Listening on port 3333
