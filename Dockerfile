FROM openjdk:11-jdk

RUN apt-get update && \
    apt-get install -y maven

WORKDIR /app

COPY . .

RUN mvn clean install

CMD ["java", "-jar", "target/login-1.0-SNAPSHOT.jar"]
