#!/usr/bin/env bash

cp ../../../target/release/parity ./
cp ../../../ethcore/res/ethereum/hardchain.json ./
cp ../../hardchain.toml ./

cp ../../../ethcore/res/ethereum/hardchain.json /root/
cp ../../hardchain.toml /root/
cp ./start_parity.sh /root/

docker build -t uhub.service.ucloud.cn/hard_docker/parity-arm-ubuntu:latest .


