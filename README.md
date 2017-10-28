# config-server
Spring Cloud configuration server

## Environment Variables
The following variables need to be supplied at runtime:


APPLICATION-NAME
The name you give this application.  This is utlized in many places to identify the instances of the service.

SPRING-CLOUD-CONFIG-GIT-URI
The URI for the Git Server where your configuration files reside


SPRING-CLOUD-CONFIG-SERVER-ENCRYPT-ENABLED
Boolean which enables encryption services.

ENCRYPT-KEY
If encryption services are enabled, this is the key used to encrypt data for the config server
