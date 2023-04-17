
FROM openjdk:11-jd 

RUN apt-get update &&
    apt-get install -y maven

 

WORKDIR /javaapp


COPY . .

 
RUN mvn clean install

 
CMD ["java", "-jar", "target/login-1.0-SNAPSHOT.jar"]

