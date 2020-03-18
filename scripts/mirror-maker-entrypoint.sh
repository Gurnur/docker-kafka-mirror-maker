#!/bin/bash
set -ex

echo "Starting Kafka Mirror maker"

cd /opt/kafka && \
bin/kafka-mirror-maker.sh --consumer.config config/consumer.properties \
--producer.config config/producer.properties \
--whitelist "Topic"