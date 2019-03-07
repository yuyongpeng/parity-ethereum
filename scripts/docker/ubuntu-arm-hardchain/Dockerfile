FROM armv7/armhf-ubuntu_core

RUN apt-get update && apt-get -y upgrade  && apt-get install libgcc libstdc++ && apt-get autoremove && apt-get clean

COPY parity /root/parity
COPY hardchain.toml /root/hardchain.toml
COPY hardchain.json /root/hardchain.json
COPY start_parity.sh /root/start_parity.sh
COPY arm-linux-gnueabihf/* /lib/
EXPOSE 38545 38546
ENTRYPOINT ["/root/start_parity.sh"]
