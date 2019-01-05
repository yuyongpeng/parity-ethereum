FROM arm32v6/alpine

apk add --no-cache eudev-libs libgcc libstdc++


COPY parity /root/parity
COPY hardchain.toml /root/hardchain.toml
COPY hardchain.json /root/hardchain.json
COPY start_parity.sh /root/start_parity.sh

EXPOSE 8545 8546
ENTRYPOINT ["/root/start_parity.sh"]
