FROM livingobjects/jre8
VOLUME /tmp
ADD openapi-1.0.jar api.jar
RUN bash -c 'touch /api.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/api.jar"]
