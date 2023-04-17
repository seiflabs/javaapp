FROM openjdk:11-jdk
WORKDIR /app
RUN apt-get update
COPY . .
EXPOSE 3000
CMD ["java", "-jar", "target/login-1.0-SNAPSHOT.jar"]
