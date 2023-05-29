FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
MAINTAINER kobe2.com
COPY escritura-springboot-email/target/escritura-email-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT [ "java", \
"-Dspring.profiles.active=dev", \
"-Dcustom.mq.topic=topic", \
"-Dcustom.mq.virtualHost=virtualHost", \
"-Dcustom.mq.host=host", \
"-Dcustom.mq.username=username", \
"-Dcustom.mq.password=password", \
"-Dcustom.mq.key=key", \
"-Dcustom.mq.queue=queue", \
"-Dcustom.mail.user=user", \
"-Dcustom.mail.pw=pw", \
"-Dcustom.mail.host=host", \
"-Dcustom.mail.protocol=protocol", \
"-Dcustom.mail.auth=auth", \
"-Dcustom.mail.enable=enable", \
"-Dcustom.mail.debug=debug", \
"-jar", \
"app.jar" ]
