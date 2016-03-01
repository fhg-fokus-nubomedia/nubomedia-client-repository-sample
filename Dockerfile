FROM nubomedia/apps-baseimage:v1

MAINTAINER Nubomedia

ADD kurento-hello-world-repository/ /tmp/kurento-hello-world-repository

ENTRYPOINT cd /tmp/kurento-hello-world-repository/ && mvn compile exec:java