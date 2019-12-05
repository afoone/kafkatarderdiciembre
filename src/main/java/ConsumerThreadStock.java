import java.time.Duration;
import java.util.concurrent.CountDownLatch;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;
import org.apache.kafka.common.errors.WakeupException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.elasticsearch.client.RestHighLevelClient;
 

public class ConsumerThreadStock implements Runnable {

    private CountDownLatch latch = null;
    private final KafkaConsumer<String, String> kafkaConsumer;

    public ConsumerThreadStock(CountDownLatch latch, KafkaConsumer<String, String> consumer) {
        this.latch = latch;
        this.kafkaConsumer = consumer;
    }


    RestHighLevelClient restHLC = null;



    @Override
    public void run() {
        Logger logger = LoggerFactory.getLogger(ConsumerThreadStock.class.getName());
        // esto es lo que vamos a ejecutar en el hilo
        try {while (true) {
            ConsumerRecords<String, String> consumerRecords = 
            this.kafkaConsumer.poll(Duration.ofMillis(1000));

            for (ConsumerRecord<String,String> consumerRecord 
                : consumerRecords) {
                    logger.info("mensaje recibido");
                    logger.info("key " + consumerRecord.key());
                    logger.info("offset "+ consumerRecord.offset());
                    logger.info("partition "+consumerRecord.partition());
                    logger.info("value " +  consumerRecord.value());
                
            }
        }} catch (WakeupException e) {
            logger.info("Recibida señal de apagado");
        } finally {
            latch.countDown();
        }
    }

    public void shutdown() {
        kafkaConsumer.wakeup();
    }

}