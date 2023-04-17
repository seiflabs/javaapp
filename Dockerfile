# Utilisez l'image Docker OpenJDK 11
FROM openjdk:11-jdk-slim

# Ajoutez les dépendances Java
RUN apt-get update && apt-get install -y maven

# Copiez le code de l'application
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

# Copiez le fichier jar dans l'image
COPY . .

# Configurez la commande d'exécution
CMD ["java", "-jar", "target/login-1.0-SNAPSHOT.jar"]

