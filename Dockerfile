# Utilisez une image de base Java 11
FROM openjdk:11

# Définissez le répertoire de travail
WORKDIR /app

# Ajoutez les fichiers de votre application Java dans le conteneur
COPY target/login-1.0-SNAPSHOT.jar /app/app.jar

# Exposez le port sur lequel votre application Java s'exécute
EXPOSE 8081

# Démarrez l'application Java lors du lancement du conteneur
CMD ["java", "-jar", "app.jar"]
