#!/usr/bin/env bash

docker run -ti -v /mnt/dphotos/parity/start_parity.sh:/root/start_parity.sh uhub.service.ucloud.cn/hard_docker/parity:latest /root/start_parity.sh

docker run -ti -v /root/start_parity.sh:/root/start_parity.sh -v /root/log.txt:/root/log.txt uhub.service.ucloud.cn/hard_docker/parity-arm:latest

