# Rust版本的以太坊部署和维护

## 1. ucloud 部署

 106.75.19.197 部署了完整的rust和c++的编译环境。需要的可执行程序可以通过rcp得到。

```
/root/parity/parity-ethereum/target/release/parity
/root/ethminer/build/ethminer/ethminer
```

 在ucloud上可以直接运行，程序依赖二个配置文件，

- hardchain.toml      配置网络，出块，rpc等参数
- hardchain.json      存放创世块，基本配置等参数

 启动脚本如下：

```
/root/parity/parity-ethereum/target/release/parity \
--unlock "0xd43da923f1c1e2528eb09e9e0c9cf1024c892039" \
--jsonrpc-interface 0.0.0.0 \
--password /data/parity/chain_data/password.txt \
--base-path /root/parity/chain_data \
--chain /root/parity/parity-ethereum/ethcore/res/ethereum/hardchain.json \
--config /root/parity/parity-ethereum/scripts/hardchain.toml \
--l main=trace
```

 如果这台机器要配置成miner节点，要启动ethminer来出块，启动方法如下：

 第一个参数是parity的rpc地址，第二个参数是使用的线程数量

```
/root/ethminer/build/ethminer/ethminer \
--farm http://127.0.0.1:38545 --mining-threads 1
```

 hardchain.toml文件中的参数 author  engine_signer 需要配置为账号中有eth大于10万的。

 可以配置成创世区块中的账号，或者给对应账号转账

## 2. device 部署

 192.168.0.13 设备上部署了rust arm的编译环境，可以得到parity的可执行程序。

 这个dphotos性能较差，也可以到106.75.19.197通过交叉编译得到，然后scp到本机来制作images。

 做好的image已经push到了ucloud，在运行之前要pull到本地

> [uhub.service.ucloud.cn/hard_docker/parity-arm:latest](http://uhub.service.ucloud.cn/hard_docker/parity-arm:latest)

 下面一个启动脚本，二个配置文件和一个目录需要做映射。

- start_parity.sh       用来启动parity主程序,设置配置文件位置
- hardchain.toml     配置网络，出块，rpc等参数
- hardchain.json     存放创世块，基本配置等参数
- chain_data            存放运行时数据，rocksdb等

 启动docker的脚本如下，目录以后可以根据实际调整，如果参数稳定不需要调整了，对应的文件也可以不映射。

```
docker run -d \
-v /mnt/dphotos/parity/start_parity.sh:/root/start_parity.sh \
-v /mnt/dphotos/parity/hardchain.toml:/root/hardchain.toml \
-v /mnt/dphotos/parity/hardchain.json:/root/hardchain.json \
-v /mnt/dphotos/parity/chain_data:/root/chain_data --network host \
--restart=always \
uhub.service.ucloud.cn/hard_docker/parity-arm:latest
```