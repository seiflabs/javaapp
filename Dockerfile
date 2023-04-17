FROM openjdk:11
COPY . /app
WORKDIR /app
RUN mvn clean install
EXPOSE 8081
CMD ["java", "-jar", "target/appjava.jar"]
