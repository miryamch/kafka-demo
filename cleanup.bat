@ECHO OFF
ECHO **** Stopping Kafka Demo ****
call kafka-topics --bootstrap-server kafka:9092 --delete --if-exists --topic demo-topic;
for /f %%i in ('docker ps -aq') do set CONTAINER_IDS=%%i
docker stop %CONTAINER_IDS%
docker rm %CONTAINER_IDS%
ECHO cleanup complete