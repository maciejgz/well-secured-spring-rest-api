FROM alpine:edge
MAINTAINER maciejgz

RUN apk add --no-cache openjdk11

RUN apk add --update \
    curl \
    && rm -rf /var/cache/apk/*

ARG WAR_FILE=./build/libs/*.war

COPY ${WAR_FILE} app.war

ENTRYPOINT ["java","-jar","/app.war"]