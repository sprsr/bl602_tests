cd bl_iot_sdk
export BL60X_SDK_PATH=$(pwd)
export CONFIG_CHIP_NAME=BL602

cd customer_app/<test>
make
cd build_out
ls -la *.bin
wget https://github.com/spacemeowx2/blflash/releases/download/v0.3.5/blflash-linux-amd64

chmod +x blflash*
./blflash-linux-amd64 flash sdk_app_helloworld.bin --port /dev/ttyUSB0
screen /dev/ttyUSB0 2000000
