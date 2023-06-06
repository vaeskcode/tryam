FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven git wget -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git &&\
    cd boxfuse-sample-java-war-hello/ &&\
    mvn package
RUN mkdir /usr/local/tomcat
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75-deployer.tar.gz -O /tmp/tomcat.tar.gz &&\
    cd /tmp &&\
    tar xvfz tomcat.tar.gz &&\
    cp -Rv /tmp/apache-tomcat-9.0.75/* /usr/local/tomcat/ &&\
    cp boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run