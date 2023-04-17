FROM openjdk:11-jre-slim

WORKDIR /app

COPY . .

CMD ["java", "-jar", "/target/login-1.0-SNAPSHOT.jar"]






