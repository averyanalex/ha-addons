# What is it?
This is a Home Assistant addon, that will add for your HA hub full Yggdrasil functionality.
You will have static IP, will work incoming connections and local peer discovery.
# How to setup?
Install and run addon, go to config directory (use editor addon) and find yggdrasil.conf.
Replace
`  Peers: []`
To
`  Peers:`
`  [`
`    tcp://89.223.121.211:5353`
`    tcp://46.151.26.194:60575`
`    tcp://82.165.69.111:61216`
`  ]`
But dont forget to check public peers list at https://github.com/yggdrasil-network/public-peers
# Security warning
All ports of HA will be available for **everyone** in Yggdrasil. Set strong password. Sometime I will fix it.
