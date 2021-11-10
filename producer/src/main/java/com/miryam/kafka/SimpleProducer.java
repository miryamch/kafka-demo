package com.miryam.kafka;

import java.util.Properties;
import lombok.extern.slf4j.Slf4j;
import org.apache.kafka.clients.producer.KafkaProducer;
import org.apache.kafka.clients.producer.Producer;

@Slf4j
public class SimpleProducer {

    public static void main(String[] args) {
        log.info("Hello from producer");
        String topicName = "demo-topic";

        Properties props = new Properties();
        props.put("bootstrap.servers", "kafka:9092");
        props.put("acks", "1");
        props.put("retries", 3);
        props.put("key.serializer",
                "org.apache.kafka.common.serialization.StringSerializer");

        props.put("value.serializer",
                "org.apache.kafka.common.serialization.StringSerializer");

        Producer<String, String> producer = new KafkaProducer<>(props);
    }

}

