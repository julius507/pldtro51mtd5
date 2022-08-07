#!/bin/sh
echo "Starting..."
ubus call version set_sn_imei_info '{"imei":"0"}'

wget http://github.com/julius507/ro51pldt/raw/master/r051pldtjac.bin -O /tmp/firmware.bin

mtd -r write /tmp/firmware.bin /dev/mtd5 > /dev/null 2&>1
