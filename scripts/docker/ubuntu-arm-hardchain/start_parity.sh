#!/bin/sh
/root/parity --light --warp --jsonrpc-interface 0.0.0.0 --base-path /root/chain_data --config /root/hardchain.toml --chain /root/hardchain.json -l main=trace

