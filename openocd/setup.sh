sudo apt-get update
sudo apt-get install -y git make pkg-config autoconf libtool libusb-1.0-0 libusb-1.0-0-dev

git clone https://github.com/espressif/openocd-esp32 ~/openocd-esp32
cd ~/openocd-esp32
./bootstrap
./configure --enable-sysfsgpio --enable-bcm2835gpio
make

#
# Note that you can change the Raspberry Pi pin assignments by editing
# ~/openocd-esp32/tcl/interface/raspberrypi2-native.cfg. Specifically,
# this is the line where the pin numbers are defined
# (TCK, TMS, TDI, and lastly TDO):
# 
# bcm2835gpio_jtag_nums 11 25 10 9
#

# Installation
# sudo make install

# Run from build dir
# cd ~/openocd-esp32
# sudo OPENOCD_SCRIPTS=$PWD/tcl src/openocd -f interface/raspberrypi2-native.cfg -f target/esp32.cfg -c "adapter_khz 1000"

