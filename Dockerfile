From openjdk:11.0.11-jre-slim

COPY target/login-1.0-SNAPSHOT.jar login-1.0-SNAPSHOT.jar

CMD ["java", "-jar", "login-1.0-SNAPSHOT.jar"]
