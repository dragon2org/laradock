# kafka 命令行操作

- 启动kafka

```bash
#启动zookeeper
/opt/bin/zookeeper-server-start.sh config/zookeeper.properties

#启动kafka
/opt/bin/kafka-server-start.sh config/server.properties
```

- 创建 topic

```bash
/opt/bin/kafka-topics.sh --zookeeper 172.19.0.9:2181 --create --topic zerg.hydra --partitions 3 --replication-factor 2
```

- 删除topic

```bash
 auto.create.topics.enable = false

 server.properties
 delete.topic.enable=true

/opt/bin/kafka-topics --delete --zookeeper 172.19.0.9:2181 --topic topic_name
```
