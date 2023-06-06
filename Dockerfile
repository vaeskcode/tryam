FROM ubuntu:20.04
RUN apt update &&\
    apt install default-jdk maven tomcat9 git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git &&\
    cd boxfuse-sample-java-war-hello/ &&\
    mvn package &&\
    cp boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]