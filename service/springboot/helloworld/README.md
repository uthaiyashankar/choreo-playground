# Prerequisites
Java 17 or later

# Generate springboot 
Go to https://start.spring.io/ and generate a skeleton

# Build
```
mvn clean install
```
# Run
```
mvn spring-boot:run

Or

java -jar target/helloworld-0.0.1-SNAPSHOT.jar
```

# Calling the api
http://localhost:8080/greeting?name=shankar

# Generating openapi
json : http://localhost:8080/v3/api-docs

yaml : http://localhost:8080/v3/api-docs.yaml

# Accessing swagger ui
http://localhost:8080/swagger-ui/index.html

# Other details
* Please note .choreo folder. Need the endpoints.yaml and openapi.yaml there
* mvnw, .mvn files were generated and included from start.spring.io
* .trivyignore file to list down all CVE which are failing in trivy scans