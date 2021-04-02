FROM debian:10
RUN apt-get update && apt install default-jdk tomcat9 maven git apt-utils -y
RUN mkdir ~/dz-docker
RUN chmod -R 0777 ~/dz-docker
RUN cd ~/dz-docker
RUN git clone https://github.com/AlexanderSayner/JavaWorldLandmarks.git
RUN cd JavaWorldLandmarks
RUN mvn package
RUN cd target
RUN cp *.war /var/lib/tomcat9/webapps/