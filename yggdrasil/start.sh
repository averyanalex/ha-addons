#!/bin/ash

conf_file=/config/yggdrasil.conf

[ -f "${conf_file}" ] || yggdrasil -genconf >${conf_file}

modprobe tun
yggdrasil -useconffile ${conf_file}
