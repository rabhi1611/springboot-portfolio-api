# Use an official Maven image as the base image
FROM maven:3.8.4-openjdk-21-slim AS build
# Set the working directory in the container
WORKDIR /app
# Copy the pom.xml and the project files to the container
COPY pom.xml .
COPY src ./src
# Build the application using Maven
RUN mvn clean package -DskipTests
# Use an official OpenJDK image as the base image
FROM openjdk:21-jre-slim
# Set the working directory in the container
WORKDIR /app

RUN apk update && apk add --no-cache \
    bash \
    curl \
    openssl && \
    rm -rf /var/cache/apk/*


EXPOSE 443

COPY target/*.jar /app/boot.jar

ENTRYPOINT ["java", "-jar", "/app/boot.jar"]