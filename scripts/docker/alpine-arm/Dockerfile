FROM armhf/alpine
RUN apk update
RUN apk add --no-cache eudev-libs libgcc libstdc++
COPY parity /root/parity
COPY hardchain.toml /root/hardchain.toml
COPY hardchain.json /root/hardchain.json
COPY start_parity.sh /root/start_parity.sh
COPY arm-linux-gnueabihf/* /lib/
EXPOSE 38545 38546
ENTRYPOINT ["/root/start_parity.sh"]
