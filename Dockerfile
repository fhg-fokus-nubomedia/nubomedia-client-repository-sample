FROM nubomedia/apps-baseimage:v1

MAINTAINER Nubomedia

ADD kurento-hello-world-repository/ /tmp/kurento-hello-world-repository

EXPOSE 8443/tcp 8088/tcp 443/tcp
ENTRYPOINT cd /tmp/kurento-hello-world-repository/ && mvn compile exec:java
