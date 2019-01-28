FROM java:8

ARG VERSION=0.14.6

ENV ELASTICMQ_OPTS=""
ENV ELASTICMQ_CONFIG_FILE=""

EXPOSE 9324

ADD https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-${VERSION}.jar /elasticmq-server.jar

VOLUME /etc/elasticmq

CMD ["java", "${ELASTICMQ_CONFIG_FILE}", "-jar", "/elasticmq-server.jar", "${ELASTICMQ_OPTS}"]
