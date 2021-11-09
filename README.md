# kafka-demo
Self-learning project.  

 General Concept: 
- 1 kafka cluster with 1 broker
- 1 producer sending messages 
- 1 consumer consuming messages 

# Installation 
1. add kafka, zookeeper, and kafdrop to your host file
2. install kafka cli and add `%KAFKA_HOME%\bin\windows` to you path 

# Run the project 
1. run startup.batch from cmd or Powershell to launch the containers 
2. Topics and messages visible on http://kafdrop:9000/
3. run cleanup.bat from cmd or Powershell* 
> *warning: will remove all running containers

   