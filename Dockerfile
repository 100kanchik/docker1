FROM tomcat
RUN apt-get update && apt install maven git apt-utils -y
#RUN mkdir /root/dz-docker
#RUN chmod -R 0777 /root/dz-docker
#RUN cd /root/dz-docker
#EXPOSE 8080
#RUN git clone https://github.com/AlexanderSayner/JavaWorldLandmarks.git
#RUN cd /root/dz-docker/JavaWorldLandmarks/
#RUN mvn package
#RUN cd target
#RUN cp *.war /var/lib/tomcat9/webapps/