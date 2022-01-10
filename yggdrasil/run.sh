#!/bin/ash
echo Starting yggdrasil...
conf_file=/config/yggdrasil.conf

[ -f "${conf_file}" ] || /usr/local/bin/yggdrasil -genconf >${conf_file}

/usr/local/bin/yggdrasil -useconffile ${conf_file}
