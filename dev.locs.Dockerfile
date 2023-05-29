FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
EXPOSE 8080
MAINTAINER kobe2.com
COPY escritura-springboot-locs/target/escritura-locs-0.0.1-SNAPSHOT.jar escritura-locs-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","app.jar"]