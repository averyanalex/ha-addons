#!/bin/ash
echo Starting yggdrasil...

conf_file=/data/yggdrasil.conf

if [ ! -f ${conf_file} ]; then
    echo Generating config...
    /usr/local/bin/yggdrasil -genconf > ${conf_file}
fi

echo Normalizing config...
/usr/local/bin/yggdrasil -normaliseconf -useconffile ${conf_file} > ${conf_file}

echo Yggdrasil IP:
/usr/local/bin/yggdrasil -address -useconffile ${conf_file}

echo Starting Yggdrasil...
/usr/local/bin/yggdrasil -autopeer -useconffile ${conf_file}
