FROM debian:10
RUN apt-get update && apt install default-jdk tomcat9 maven git apt-utils -y
#RUN mkdir /root/dz-docker
#RUN chmod -R 0777 /root/dz-docker
#RUN cd /root/dz-docker
#CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
EXPOSE 8080
#RUN git clone https://github.com/AlexanderSayner/JavaWorldLandmarks.git
#RUN cd /root/dz-docker/JavaWorldLandmarks/
#RUN mvn package
#RUN cd target
#RUN cp *.war /var/lib/tomcat9/webapps/