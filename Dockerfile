FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven tomcat9 git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git &&\
    cd boxfuse-sample-java-war-hello/ &&\
    mvn package &&\
    cp target/hello-1.0.war /var/lib/tomcat9/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]