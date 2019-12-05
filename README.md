
# Genearamos arquetipo 
mvn archetype:generate \
	-DgroupId=com.goldcar.kafka \
	-DartifactId=java-api \
	-DarchetypeArtifactId=maven-archetype-quickstart \
	-DinteractiveMode=false

gradle init --type java-application

# Dependencias

<dependency>
    <groupId>org.apache.kafka</groupId>
    <artifactId>kafka-clients</artifactId>
    <version>2.3.1</version>
</dependency>


compile group: 'org.apache.kafka', name: 'kafka-clients', version: '2.3.1'

<dependency>
    <groupId>org.slf4j</groupId>
    <artifactId>slf4j-simple</artifactId>
    <version>1.7.29</version>
</dependency>

compile group: 'org.slf4j', name: 'slf4j-simple', version: '1.7.29'

http://localhost:9200/_cat/health?v


http://localhost:9200/_cat/nodes?v

http://localhost:9200/_cat/indices?v


