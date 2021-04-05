FROM tomcat
RUN apt-get update && apt install maven git apt-utils -y
RUN mkdir /root/dz-docker && chmod -R 0777 /root/dz-docker && cd /root/dz-docker && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && cd boxfuse-sample-java-war-hello && mvn package && cd target && cp hello-1.0.war /usr/local/tomcat/webapps
#RUN cp *.war /var/lib/tomcat9/webapps/
#EXPOSE 8080
#RUN cd /root/dz-docker/JavaWorldLandmarks/
#RUN cd target
#RUN cp *.war /var/lib/tomcat9/webapps/
#RUN  ["tomcat9", "-g", "daemon off;"]
CMD ["/usr/local/tomcat/bin/catalina.sh run", "-g", "daemon off;"]
#RUN /usr/local/tomcat/bin/catalina.sh run
