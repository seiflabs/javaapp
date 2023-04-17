FROM openjdk:11-jre-slim

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY . .

EXPOSE 8081
CMD [ "java", "-jar", "target/login-1.0-SNAPSHOT.jar" ]





