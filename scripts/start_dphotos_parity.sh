#!/usr/bin/env bash

/mnt/dphotos/parity/parity-ethereum/target/release/parity --jsonrpc-interface 0.0.0.0 --base-path /mnt/dphotos/parity/chain_data --config /mnt/dphotos/parity/parity-ethereum/scripts/hardchain.toml --chain /mnt/dphotos/parity/parity-ethereum/ethcore/res/ethereum/hardchain.json -l main=trace,network=trace,sync=trace,spec=trace
