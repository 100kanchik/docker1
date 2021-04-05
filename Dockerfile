FROM tomcat
RUN apt-get update && apt install maven git apt-utils -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /usr/local/tomcat/boxfuse-sample-java-war-hello/
RUN mvn package
RUN cp ./target/hello-1.0.war /usr/local/tomcat/webapps/ && cp -r  ./target/hello-1.0 /usr/local/tomcat/webapps/hello-1.0