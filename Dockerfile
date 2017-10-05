FROM openjdk:8
MAINTAINER billbensing@wb3tech.com
ENV SPRING-APPLICATION-NAME=wb3-k8s-configserver \
  SERVER-PORT=8080 \
  SPRING-CLOUD-CONFIG-SERVER-ENCRYPT-ENABLED=TRUE \
  SPRING-CLOUD-CONFIG-SERVER-GIT-URI=https://github.com/k8s-spring-cloud/1-Configuration
EXPOSE 8080
ADD /target/config-server.jar config-server.jar
ENTRYPOINT ["java", "-jar", "config-server.jar"]