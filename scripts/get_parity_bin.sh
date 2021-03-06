#!/usr/bin/env bash

# copy arm bin from compiler host. ethEr)!0x
mkdir -p /mnt/dphotos/parity/parity-ethereum/target/release/
scp -P 2345 ubuntu@106.75.19.197://data/parity/parity-ethereum/target/armv7-unknown-linux-gnueabihf/release/parity /mnt/dphotos/parity/parity-ethereum/target/release/

scp -P 2345 ubuntu@192.168.0.177://data/parity/parity-ethereum/target/release/parity /data/parity/
scp -P 2345 ubuntu@192.168.0.177://data/parity/ethminer/build/ethminer/ethminer /data/parity/

scp -P 2345 ubuntu@192.168.0.177://data/parity/parity-ethereum/scripts/hardchain.toml /data/parity/
scp -P 2345 ubuntu@192.168.0.177://data/parity/parity-ethereum/scripts/start_parity.sh /data/parity/
scp -P 2345 ubuntu@192.168.0.177://data/parity/parity-ethereum/ethcore/res/ethereum/hardchain.json /data/parity/
scp -P 2345 ubuntu@192.168.0.177://data/parity/parity-ethereum/scripts/accounts/* /root/parity/chain_data/key

