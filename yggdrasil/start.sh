#!/bin/ash
echo Starting yggdrasil...
conf_file=/config/yggdrasil.conf

[ -f "${conf_file}" ] || yggdrasil -genconf >${conf_file}

modprobe tun
mkdir /dev/net
mknod /dev/net/tun c 10 200
ip tuntap add mode tap tap
yggdrasil -useconffile ${conf_file}
