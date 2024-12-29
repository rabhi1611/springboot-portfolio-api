FROM amazoncorretto:21-alpine3.17-full

WORKDIR app

RUN apk update && apk add --no-cache \
    bash \
    curl \
    openssl && \
    rm -rf /var/cache/apk/*


EXPOSE 443

COPY target/rohit*.jar /app/boot.jar

ENTRYPOINT["java", "-jar", "/app/boot.jar"]