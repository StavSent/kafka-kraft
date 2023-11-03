FROM openjdk:11

RUN wget https://downloads.apache.org/kafka/3.6.0/kafka_2.12-3.6.0.tgz \
	&& tar xzf kafka_2.12-3.6.0.tgz \
	&& mv kafka_2.12-3.6.0.tgz ~

WORKDIR kafka_2.12-3.6.0

# ENV KAFKA_CLUSTER_ID="$(./bin/kafka-storage.sh random-uuid)"
RUN bin/kafka-storage.sh format -t  fJwrQccCQly593Ew9EAXeQ -c config/kraft/server.properties 

CMD ["./bin/kafka-server-start.sh", "config/kraft/server.properties"]
