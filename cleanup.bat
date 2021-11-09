@ECHO OFF
ECHO **** Stopping Kafka Demo ****
call kafka-topics --bootstrap-server kafka:9092 --delete --if-exists --topic demo-topic;
::fixme unknown shorthand flag: 'a' in -aq)
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
ECHO cleanup complete