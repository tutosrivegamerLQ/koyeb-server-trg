# Usar una imagen base de Java
FROM openjdk:21-jdk-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR a la imagen
COPY envios.jar /app/envios.jar

# Exponer el puerto
EXPOSE 7070

# Comando para ejecutar el JAR
ENTRYPOINT ["java", "-jar", "envios.jar"]
