# Docker Kafka Mirror Maker for local testing 

Kafka mirror is a tool used to replicate Kafka topics and messages across different clusters. More information: https://cwiki.apache.org/confluence/pages/viewpage.action?pageId=27846330

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
docker-compose exec mirror-maker /scripts/check-messages.sh $1
```
where $1 is "1" or "2" depending on 'kafka1' or 'kafka2'
