FROM debian:11
WORKDIR /home
RUN apt-get update
RUN apt install -y openjdk-17-jdk-headless
COPY ./server.jar ./server.jar
COPY ./eula.txt ./eula.txt
COPY ./server.properties ./server.properties
EXPOSE 25565
CMD [ "/bin/sh", "-c", "/usr/bin/java -Xmx1024M -Xms1024M -jar ./home/server.jar nogui" ]