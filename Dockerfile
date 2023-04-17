#Définition de l'image de base
FROM openjdk:11-jdk

#Création du répertoire de travail
WORKDIR /app

#Copie des fichiers nécessaires dans l'image
COPY target/login-1.0-SNAPSHOT.jar login-1.0-SNAPSHOT.jar

#Exposer le port de l'application
EXPOSE 8080

#Définition de la commande de démarrage de l'application
CMD ["java", "-jar", "login-1.0-SNAPSHOT.jar"]
