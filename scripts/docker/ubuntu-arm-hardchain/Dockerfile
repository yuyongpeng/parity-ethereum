FROM arm32v7/ubuntu:16.04

COPY sources.list /etc/apt/
RUN apt update && apt -y upgrade
RUN apt install libgcc libstdc++

COPY parity /root/parity
COPY hardchain.toml /root/hardchain.toml
COPY hardchain.json /root/hardchain.json
COPY start_parity.sh /root/start_parity.sh
COPY arm-linux-gnueabihf/* /lib/
EXPOSE 38545 38546
ENTRYPOINT ["/root/start_parity.sh"]
