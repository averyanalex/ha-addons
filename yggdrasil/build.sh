#!/bin/bash
sudo docker run --rm --privileged -v ~/.docker:/root/.docker -v /home/alex/Документы/Программирование/ha-addons/yggdrasil:/data homeassistant/amd64-builder --all -t /data -i ha-yggdrasil-{arch} -d averyanalex --docker-hub-check --no-cache
