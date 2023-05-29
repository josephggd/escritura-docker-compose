FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
EXPOSE 8080
ARG profile
MAINTAINER kobe2.com
COPY escritura-springboot-auth/target/escritura-auth-0.0.1-SNAPSHOT.jar escritura-auth-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/escritura-auth-0.0.1-SNAPSHOT.jar", "-Dspring.active.profiles=dev"]
