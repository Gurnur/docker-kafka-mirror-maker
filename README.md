# Docker Kafka Mirror Maker 2.0 for local testing 

Kafka mirror 2.0 is a tool used to replicate Kafka topics and messages across different clusters. More information: https://cwiki.apache.org/confluence/display/KAFKA/KIP-382%3A+MirrorMaker+2.0#KIP-382:MirrorMaker2.0-RunningastandaloneMirrorMakerconnector

### Requirements:

* Docker 19.03.8+
* Docker Compose 3.7+

### Run:
To start
```
docker-compose up -d
```

To stop
```
docker-compose down
```

### Send some random messages:
* The default topic is called Topic with 1 partition and 1 replica
```
$ docker-compose exec mirror-maker /scripts/send-messages.sh
```
### Check mirroring:
* The messages from each DC should be the exact same.
```
docker-compose exec mirror-maker /scripts/check-messages.sh $1 $2
```
where $1 is "1" or "2" depending on 'kafka1' or 'kafka2' and $2 is "Topic" or "Topic1" (topic name).
