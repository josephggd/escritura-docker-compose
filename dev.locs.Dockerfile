FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
MAINTAINER kobe2.com
COPY escritura-springboot-locs/target/escritura-locs-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Dspring.profiles.active=dev","-jar","app.jar"]
