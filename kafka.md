# kafka 命令行操作

- 启动kafka

```bash
#启动zookeeper
/opt/bin/zookeeper-server-start.sh config/zookeeper.properties

#启动kafka
/opt/bin/kafka-server-start.sh config/server.properties
```

- 启动消费者

```bash
/opt/bin/kafka-console-consumer.sh --zookeeper 172.19.0.9:2181 --topic zerg.hydra --from-beginning
```

- 启动生成者

```bash
/opt/bin/kafka-console-producer.sh --broker-list localhost:9092,localhost:9093,localhost:9094 --sync --topic zerg.hydra
```

## topic管理

https://www.cnblogs.com/xiaodf/p/6093261.html

### 创建kafka topic

```bash
bin/kafka-topics.sh --zookeeper node01:2181 --create --topic t_cdr --partitions 30  --replication-factor 2

/opt/kafka/bin/kafka-topics.sh --zookeeper $KAFKA_ZOOKEEPER_CONNECT  --create --topic alikafka_mini_program_publish_test --partitions 1  --replication-factor 1
```

### 查看所有topic列表

```bash
bin/kafka-topics.sh --zookeeper node01:2181 --list

/opt/kafka/bin/kafka-topics.sh --zookeeper $KAFKA_ZOOKEEPER_CONNECT --list
```