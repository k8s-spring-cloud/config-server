FROM openjdk:8
MAINTAINER billbensing@wb3tech.com
EXPOSE 80
ADD /target/config-server.jar config-server.jar
ENTRYPOINT ["java", "-jar", "config-server.jar"]