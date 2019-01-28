FROM java:8

ARG VERSION=0.14.6
ENV ELASTICMQ_OPTS=""

EXPOSE 9324

ADD https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-${VERSION}.jar /elasticmq-server.jar

COPY ./.docker/elasticmq/conf/custom.conf /etc/elasticmq/elasticmq.conf

VOLUME /etc/elasticmq

CMD ["java", "-Dconfig.file=/etc/elasticmq/elasticmq.conf", "-jar", "/elasticmq-server.jar", "${ELASTICMQ_OPTS}"]
