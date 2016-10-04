FROM openjdk:8-jdk
MAINTAINER takayukioda <takayuki@odashi.me>

ENV SCALA_VERSION 2.11.8

# Install Scala
RUN curl -fsL http://downloads.typesafe.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz | tar xfz - -C /opt \
	&& echo 'export PATH=/opt/scala-$SCALA_VERSION/bin:$PATH' >>/root/.bashrc

WORKDIR /root
