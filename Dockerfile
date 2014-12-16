FROM java:8

ENV KIBANA_VERSION master

ADD ./kibana-${KIBANA_VERSION}.tar.gz /opt
ADD ./run.sh /run.sh
RUN mv /opt/kibana-* /opt/kibana-${KIBANA_VERSION}

EXPOSE 5601

ENTRYPOINT /run.sh
