#!/bin/ash
echo Starting yggdrasil...
conf_file=/config/yggdrasil.conf

[ -f "${conf_file}" ] || yggdrasil -genconf >${conf_file}

yggdrasil -useconffile ${conf_file}
