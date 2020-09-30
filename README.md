POF of the well secured Spring REST API with JWT and . 

Requirements:
- App shall allow to register and login users. Password shall be encrypted.
- Server shall support (partially or fully) OpenID Connect based on the MitreId connect: https://github.com/mitreid-connect/OpenID-Connect-Java-Spring-Server
- App shall use token based authorization. JWT tokens shall be used.
- App shall handle many clients of both types: confidential and public.
- App can be configured in the code - just for tests.
- Angular client app should be created as a part of POC.

v0.0.1:
Spring Boot with JWT secured API stub.
v0.0.2:
OpenID Connect added on the top.

Backlog:
- add roles
- extend JWT token information

### Running app
#### Build
`gradlew.bat build`

#### Run locally
`gradlew.bat bootRun`

#### Docker

##### Build images
###### Backend
- `gradlew.bat bootWar`
- `docker build -t wssra-backend:latest . --file=docker/images/backend.dockerfile`

###### frontend
- `docker build -t wssra-frontend:latest . --file=docker/images/backend.dockerfile`


##### start app using docker-compose
`docker-compose -f docker/app.yml up -d`


