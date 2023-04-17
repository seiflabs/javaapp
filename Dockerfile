FROM openjdk:8-jre-alpine

WORKDIR /usr/src/app

COPY target/login-1.0-SNAPSHOT.jar .

CMD ["java", "-jar", "login-1.0-SNAPSHOT.jar"]
