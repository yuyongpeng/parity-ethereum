#!/usr/bin/env bash

# --jsonrpc-interface 127.0.0.1
/root/parity/parity-ethereum/target/release/parity --unlock "0xd43da923f1c1e2528eb09e9e0c9cf1024c892039" \
--jsonrpc-interface 0.0.0.0 --password /data/parity/chain_data/password.txt \
--base-path /root/parity/chain_data --chain /root/parity/parity-ethereum/ethcore/res/ethereum/hardchain.json \
--config /root/parity/parity-ethereum/scripts/hardchain.toml \
-l main=trace,engine=trace,client=trace,chain=trace,casper=trace,sync=trace,own_tx=trace,hardchain=trace,miner=trace,ethash=trace,verification=trace \
--force-sealing false --reseal-max-period 120000 > /root/parity/log.txt 2>&1 &


/root/parity/parity-ethereum/target/release/parity --unlock "0xd43da923f1c1e2528eb09e9e0c9cf1024c892039" \
--jsonrpc-interface 0.0.0.0 --password /data/parity/password.txt \
--base-path /root/parity/chain_data --chain /root/parity/hardchain.json \
--config /root/parity/hardchain.toml \
-l main=trace,engine=trace,client=trace,chain=trace,casper=trace,sync=trace,own_tx=trace,hardchain=trace,miner=trace,ethash=trace,verification=trace \
--force-sealing false --reseal-max-period 120000 > /data/parity/log.txt 2>&1 &
