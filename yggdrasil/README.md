# What is it?
This is a Home Assistant addon, that will add for your HA hub full Yggdrasil functionality.
You will have static IP, will work incoming connections and local peer discovery.

# How to setup?
Install and run addon, go to config directory (use editor addon) and find yggdrasil.conf.
Replace
```hjson
Peers: []
```

To
```hjson
Peers: [
  tcp://95.165.99.73:5353
  tcp://ygg.loskiq.dev:17313
  tcp://kazi.peer.cofob.ru:18000
]
```
(This list includes peers from Moscow and Saint Petersburg)
Dont forget to check public peers list at https://github.com/yggdrasil-network/public-peers

# Security warning
All ports of HA will be available for **everyone** in Yggdrasil. Set strong password. Sometime I will fix it.

# Thanks
Thanks to author of https://github.com/luzifer-docker/yggdrasil,
I took his Dockerfile as base
