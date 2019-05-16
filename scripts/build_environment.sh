#!/usr/bin/env bash

yum --skip-broken -y update
yum install -y systemd-devel git make gcc-c++ gcc file binutils leveldb-devel libudev-devel miniupnpc-devel

mkdir -p /data/parity/chain_data/keys/ethereum

# HC-ht-r001-#W@!
scp -P 2345 -r root@192.168.1.235://data/parity /data/parity

#cp /data/parity-ethereum/target/release/parity /data/parity/
#cp /data/ethminer/build/ethminer/ethminer /data/parity/
#cp /data/parity-ethereum/scripts/hardchain.toml /data/parity/
#cp /data/parity-ethereum/scripts/start_parity.sh /data/parity/
#cp /data/parity-ethereum/ethcore/res/ethereum/hardchain.json /data/parity/
#cp /data/parity-ethereum/scripts/accounts/* /data/parity/chain_data/keys/ethereum/

#sshpass -p "ethEr)!0x" scp -P 2345 ubuntu@192.168.0.177://data/parity/parity-ethereum/target/release/parity /data/parity/
#sshpass -p "ethEr)!0x" scp -P 2345 ubuntu@192.168.0.177://data/parity/ethminer/build/ethminer/ethminer /data/parity/
#sshpass -p "ethEr)!0x" scp -P 2345 ubuntu@192.168.0.177://data/parity/parity-ethereum/scripts/hardchain.toml /data/parity/
#sshpass -p "ethEr)!0x" scp -P 2345 ubuntu@192.168.0.177://data/parity/parity-ethereum/scripts/start_parity.sh /data/parity/
#sshpass -p "ethEr)!0x" scp -P 2345 ubuntu@192.168.0.177://data/parity/parity-ethereum/ethcore/res/ethereum/hardchain.json /data/parity/
#sshpass -p "ethEr)!0x" scp -P 2345 ubuntu@192.168.0.177://data/parity/parity-ethereum/scripts/accounts/* /data/parity/chain_data/keys/ethereum/


