FROM ubuntu:16.04

COPY parity /root/parity
COPY hardchain.toml /root/hardchain.toml
COPY hardchain.json /root/hardchain.json
COPY start_parity.sh /root/start_parity.sh

EXPOSE 8545 8546
ENTRYPOINT ["/root/start_parity.sh"]
