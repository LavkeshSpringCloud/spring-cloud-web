FROM nimmis/java-centos:openjdk-8-jdk
VOLUME /tmp

ADD build/libs/api-gateway.jar /app.jar
RUN touch /app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080 9080