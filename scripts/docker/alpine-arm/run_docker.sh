docker run -d -v /mnt/dphotos/parity/start_parity.sh:/root/start_parity.sh \
-v /mnt/dphotos/parity/hardchain.toml:/root/hardchain.toml -v /mnt/dphotos/parity/hardchain.json:/root/hardchain.json \
-v /mnt/dphotos/parity/chain_data:/root/chain_data --network host --restart=always \
uhub.service.ucloud.cn/hard_docker/parity-arm:latest
