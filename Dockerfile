FROM ubuntu:latest
RUN apt-get update && apt install apt-utils -y && apt-get install maven -y && apt-get install git -y && apt-get install wget -y
RUN mkdir -p /usr/local/tomcat && wget https://mirrors.nav.ro/apache/tomcat/tomcat-9/v9.0.44/bin/apache-tomcat-9.0.44.tar.gz -O /tmp/tomcat.tar.gz && cd /tmp && tar xvfz /tmp/tomcat.tar.gz && cp -Rv /tmp/apache-tomcat-9.0.44/* /usr/local/tomcat/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && cd boxfuse-sample-java-war-hello && mvn package && cd target && cp hello-1.0.war /usr/local/tomcat/webapps && cp -r hello-1.0 /usr/local/tomcat/webapps
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
