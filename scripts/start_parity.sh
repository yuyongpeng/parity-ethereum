#!/usr/bin/env bash

/data/parity/parity-ethereum/target/release/parity --jsonrpc-interface 0.0.0.0 --password /data/parity/chain_data/password --base-path /data/parity/parity_data --chain /data/parity/parity-ethereum/ethcore/res/ethereum/hardchain.json --config /data/parity/parity-ethereum/scripts/hardchain.toml -l main=trace,network=trace,sync=trace,spec=trace

