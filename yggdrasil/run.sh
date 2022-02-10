#!/bin/ash
echo Starting yggdrasil...
conf_file=/data/yggdrasil.conf

[ -f "${conf_file}" ] || /usr/local/bin/yggdrasil -genconf > ${conf_file}

echo Normalizing config...
/usr/local/bin/yggdrasil -normaliseconf -useconffile /etc/yggdrasil.conf > /etc/yggdrasil.conf

echo Yggdrasil IP:
/usr/local/bin/yggdrasil -address -useconffile ${conf_file}

echo Starting Yggdrasil...
/usr/local/bin/yggdrasil -autopeer -useconffile ${conf_file}
