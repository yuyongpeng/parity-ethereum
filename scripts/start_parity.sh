#!/usr/bin/env bash

/data/parity/parity-ethereum/target/release/parity --unlock "0xd43da923f1c1e2528eb09e9e0c9cf1024c892039" --jsonrpc-interface 0.0.0.0 --password /data/parity/chain_data/password.txt --base-path /data/parity/chain_data --chain /data/parity/parity-ethereum/ethcore/res/ethereum/hardchain.json --config /data/parity/parity-ethereum/scripts/hardchain.toml -l main=trace,network=trace,sync=trace,spec=trace

# /data/parity/parity-ethereum/target/release/parity  --jsonrpc-interface 0.0.0.0 --password /data/parity/chain_data/password.txt --base-path /data/parity/chain_data --chain /data/parity/parity-ethereum/ethcore/res/ethereum/hardchain.json --config /data/parity/parity-ethereum/scripts/hardchain.toml -l main=trace,rpc=trace
