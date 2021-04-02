FROM tomcat
RUN apt-get update && apt install maven git -y
RUN mkdir ~/dz-docker
RUN cd ~//dz-docker
RUN git clone https://github.com/AlexanderSayner/JavaWorldLandmarks.git
RUN cd JavaWorldLandmarks
RUN mvn package
RUN cd target
RUN cp 