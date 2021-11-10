@ECHO OFF
ECHO **** Starting Kafka Demo ****
docker-compose up -d
TIMEOUT /T 5
call kafka-topics --bootstrap-server kafka:9092 --create --if-not-exists --topic demo-topic --partitions 3 --replication-factor 1
ECHO Startup complete 