FROM openjdk:11-jre-slim

WORKDIR /usr/src/app

COPY target/login-1.0-SNAPSHOT.jar /app.jar

CMD ["java", "-jar", "/app.jar"]
