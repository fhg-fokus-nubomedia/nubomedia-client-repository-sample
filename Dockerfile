FROM nubomedia/apps-baseimage:v1

MAINTAINER Nubomedia

USER 1000
RUN sudo chown -R nubomedia:nubomedia /home/nubomedia
RUN mkdir -p /home/nubomedia/.m2
ADD settings.xml /home/nubomedia/.m2/
RUN git clone https://github.com/Kurento/kurento-java.git /home/nubomedia/kurento-java
ADD kurento-hello-world-repository /home/nubomedia/kurento-hello-world-repository
RUN cd /home/nubomedia/kurento-java $$ mvn install -DskipTests -Pdefault
ADD keystore.jks /
RUN cd /home/nubomedia/kurento-hello-world-repository && mvn compile

EXPOSE 8443/tcp 8088/tcp 443/tcp 8080/tcp

ENTRYPOINT cd /home/nubomedia/kurento-hello-world-repository && mvn exec:java

