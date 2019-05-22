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

- 启动消费者

```bash
/opt/bin/kafka-console-consumer.sh --zookeeper 172.19.0.9:2181 --topic zerg.hydra --from-beginning
```

- 启动生成者

```bash
/opt/bin/kafka-console-producer.sh --broker-list localhost:9092,localhost:9093,localhost:9094 --sync --topic zerg.hydra
```