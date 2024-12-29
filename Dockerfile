#
# Build stage
#
WORKDIR app

FROM maven:3.9.6-jdk-21-slim AS build
COPY src /app/src
COPY pom.xml /app
RUN mvn -f /app/pom.xml clean package


#
# Package stage
#

FROM amazoncorretto:21-alpine3.17-full


RUN apk update && apk add --no-cache \
    bash \
    curl \
    openssl && \
    rm -rf /var/cache/apk/*


EXPOSE 443

COPY target/rohit*.jar /app/boot.jar

ENTRYPOINT ["java", "-jar", "/app/boot.jar"]