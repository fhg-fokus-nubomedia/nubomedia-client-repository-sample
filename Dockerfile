FROM nubomedia/apps-baseimage:v1

MAINTAINER Nubomedia

RUN mkdir /tmp/kurento-hello-world-repository/
ADD kurento-hello-world-repository-6.4.1-SNAPSHOT /tmp/kurento-hello-world-repository/
ADD keystore.jks /

EXPOSE 8443/tcp 8088/tcp 443/tcp

ENTRYPOINT java -jar /tmp/kurento-hello-world-repository/kurento-hello-world-repository-6.4.1-SNAPSHOT

