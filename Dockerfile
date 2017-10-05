FROM openjdk:8
MAINTAINER billbensing@wb3tech.com


EXPOSE 8080
ADD /target/config-server.jar config-server.jar
ENTRYPOINT ["java", "-jar", "config-server.jar"]