FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/maven-web-application.war $PROJECT_HOME/maven-web-application.war

WORKDIR $PROJECT_HOME
EXPOSE 8080
CMD ["java" ,"-jar","./spring-boot-mongo.jar"]
