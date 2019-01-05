docker run -ti -v /root/start_parity.sh:/root/start_parity.sh -v /root/log.txt:/root/log.txt \
-v /root/hardchain.toml:/root/hardchain.toml -v /root/hardchain.json:/root/hardchain.json \
uhub.service.ucloud.cn/hard_docker/parity-arm:latest
