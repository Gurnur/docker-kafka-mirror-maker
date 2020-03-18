#!/bin/bash
set -ex

cd /opt/kafka
bin/kafka-console-consumer.sh --bootstrap-server kafka$1:9092 --topic Topic --from-beginning 