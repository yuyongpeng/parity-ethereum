#!/usr/bin/env bash

# --jsonrpc-interface 127.0.0.1
/data/parity/parity-ethereum/target/release/parity --unlock "0xd43da923f1c1e2528eb09e9e0c9cf1024c892039" --jsonrpc-interface 0.0.0.0 --password /data/parity/chain_data/password.txt --base-path /data/parity/chain_data --chain /data/parity/parity-ethereum/ethcore/res/ethereum/hardchain.json --config /data/parity/parity-ethereum/scripts/hardchain.toml -l main=trace,engine=trace,client=trace,chain=trace,casper=trace,sync=trace,own_tx=trace,hardchain=trace,miner=trace,ethash=trace,verification=trace > /data/parity/log.txt 2>&1 &
