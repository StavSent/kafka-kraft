## kafka/kraft

To create docker image just run:

```bash
docker build -t my-kafka/kraft .
docker run -d -p 9092:9092 --name my-kafka my-kafka/kraft
```

To check if kafka broker is actually running (inside the container) run:

```bash
apt-get update -y
apt-get install -y netcat
nc -vz localhost 9092
```

Basic Instructions:
```
CREATE TOPIC -> 
./bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --topic test

SEND EVENT TO TOPIC ->
./bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic test -> create topics byt writing in terminal

READ EVENTS ->
./bin/kafka-console-consumer.sh --from-beginning --bootstrap-server localhost:9092 --topic test

LIST TOPICS ->
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --list

DELETE TOPIC ->
./bin/kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic test
```