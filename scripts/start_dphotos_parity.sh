#!/usr/bin/env bash

/data/dphotos/parity/parity-ethereum/target/release/parity --jsonrpc-interface 0.0.0.0 --base-path /data/dphotos/parity/parity_data --chain /data/dphotos/parity/parity-ethereum/ethcore/res/ethereum/hardchain.json -l main=trace,network=trace,sync=trace,spec=trace
