FROM tomcat
#COPY  Landmarks-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
RUN apt-get update && apt install maven git apt-utils -y
#CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
RUN mkdir /root/dz-docker && chmod -R 0777 /root/dz-docker && cd /root/dz-docker && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && cd boxfuse-sample-java-war-hello && mvn package
#RUN chmod -R 0777 /root/dz-docker
#EXPOSE 8080
#RUN git clone https://github.com/AlexanderSayner/JavaWorldLandmarks.git && mvn package
#RUN cd /root/dz-docker/JavaWorldLandmarks/
#RUN mvn package
#RUN cd target
#RUN cp *.war /var/lib/tomcat9/webapps/