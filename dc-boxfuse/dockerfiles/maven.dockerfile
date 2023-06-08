FROM edwinbosveld/alpine-maven-git:3.5-jdk-8
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello/
RUN mvn package