#!/bin/bash
set -ex

echo "Removing old messages"
rm -f /tmp/messages.txt

echo "Generating random messages"
for MSG_ID in `seq 1 1000`
do
    echo -e "{ "messageId": $RANDOM };" >> /tmp/messages.txt
done

cd /opt/kafka
cat /tmp/messages.txt | bin/kafka-console-producer.sh --broker-list kafka1:9092 --topic Topic