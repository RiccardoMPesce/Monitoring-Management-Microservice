#!/bin/sh

echo "Starting Kafka"

while ! kafkacat -b $KAFKA_HOST:$KAFKA_PORT -L; do
    sleep 0.1
done

echo "Kafka started"

exec "$@"