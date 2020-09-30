#!/bin/bash
sudo docker run --rm --privileged -v ~/.docker:/root/.docker homeassistant/amd64-builder --all -r https://github.com/averyanalex/ha-addons -t yggdrasil -i ha-yggdrasil-{arch} -d averyanalex --docker-hub-check --no-cache
