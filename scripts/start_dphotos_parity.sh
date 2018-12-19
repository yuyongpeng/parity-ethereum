#!/usr/bin/env bash

/mnt/dphotos/parity/parity-ethereum/target/release/parity --light --warp --jsonrpc-interface 0.0.0.0 --base-path /mnt/dphotos/parity/chain_data --config /mnt/dphotos/parity/parity-ethereum/scripts/hardchain.toml --chain /mnt/dphotos/parity/parity-ethereum/ethcore/res/ethereum/hardchain.json -l main=trace > /mnt/dphotos/parity/log.txt 2>&1 &
