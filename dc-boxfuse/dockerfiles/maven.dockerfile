FROM zenika/alpine-maven:latest
RUN apk update &&\
    apk add git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello/
RUN mvn package