#!/usr/bin/env bash

/data/parity/parity-ethereum/target/release/parity --jsonrpc-interface 0.0.0.0 --base-path /data/parity/parity_data --chain /data/parity-ethereum/ethcore/res/ethereum/hardchain.json -l main=trace,network=trace,sync=trace,spec=trace

# path for dphotos.
# /mnt/parity/parity-ethereum/target/release/
