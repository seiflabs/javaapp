FROM openjdk:11-ea-11-jre
COPY target/login-1.0-SNAPSHOT.jar /app/app.jar
WORKDIR /app
CMD ["java", "-jar", "app.jar"]
