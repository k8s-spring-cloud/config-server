FROM openjdk:8
MAINTAINER billbensing@wb3tech.com

#Container runtime environment variables
ENV SPRING-APPLICATION-NAME=wb3-k8s-configserver
ENV INFO-COMPONENT=WB3 K8s | Spring Cloud - Configuration Server
ENV SERVER-PORT=8080
ENV SPRING-CLOUD-CONFIG-SERVER-ENCRYPT-ENABLED=TRUE
ENV SPRING-CLOUD-CONFIG-SERVER-GIT-URI=https://github.com/k8s-spring-cloud/1-Configuration

EXPOSE 8080
ADD /target/config-server.jar config-server.jar
ENTRYPOINT ["java", "-jar", "config-server.jar"]