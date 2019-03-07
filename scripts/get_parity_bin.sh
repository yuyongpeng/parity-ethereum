#!/usr/bin/env bash

# copy arm bin from compiler host. ethEr)!0x
mkdir -p /mnt/dphotos/parity/parity-ethereum/target/release/
scp -P 2345 ubuntu@106.75.19.197://data/parity/parity-ethereum/target/armv7-unknown-linux-gnueabihf/release/parity /mnt/dphotos/parity/parity-ethereum/target/release/

scp -P ubuntu@106.75.19.197://data/parity/ethminer/build/ethminer/ethminer /data/parity/

