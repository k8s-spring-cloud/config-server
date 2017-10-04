FROM openjdk:8
MAINTAINER billbensing@wb3tech.com

#Container build-time variables
ARG SPRING-APPLICATION-NAME=wb3-k8s-configserver
ARG INFO-COMPONENT=WB3 K8s | Spring Cloud - Configuration Server
ARG SERVER-PORT=8080
ARG SPRING-CLOUD-CONFIG-SERVER-ENCRYPT-ENABLED=TRUE
ARG SPRING-CLOUD-CONFIG-SERVER-GIT-URI=https://github.com/k8s-spring-cloud/1-Configuration

#Container runtime environment variables
ENV SPRING-APPLICATION-NAME=wb3-k8s-configserver
ENV INFO-COMPONENT=WB3 K8s | Spring Cloud - Configuration Server
ENV SERVER-PORT=8080
ENV SPRING-CLOUD-CONFIG-SERVER-ENCRYPT-ENABLED=TRUE
ENV SPRING-CLOUD-CONFIG-SERVER-GIT-URI=https://github.com/k8s-spring-cloud/1-Configuration

EXPOSE 8080
ADD /target/config-server.jar config-server.jar
ENTRYPOINT ["java", "-jar", "config-server.jar"]