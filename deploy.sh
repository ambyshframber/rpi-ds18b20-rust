#!/bin/bash

cargo build --target arm-unknown-linux-gnueabi
cd target/arm-unknown-linux-gnueabi/debug/
sftp ajal@raspberrypi << EOF
put pi_temp
bye
EOF
