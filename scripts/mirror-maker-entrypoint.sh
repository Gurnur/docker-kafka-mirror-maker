#!/bin/bash
set -ex

echo "Starting Kafka Mirror maker"

cd /opt/kafka && \
bin/connect-mirror-maker.sh config/connect-mirror-maker.properties