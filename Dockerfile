FROM eclipse-temurin:21-jdk-alpine

RUN mkdir -p /opt/youdebug
RUN mkdir -p /opt/youdebug/scripts

COPY --chown=100:0 youdebug /opt/youdebug/
RUN chmod a+x /opt/youdebug/youdebug

COPY ./build/deploy/ /opt/youdebug/lib/

ENTRYPOINT ["/opt/youdebug/youdebug"]

VOLUME /opt/youdebug/scripts

WORKDIR /opt/youdebug/scripts
