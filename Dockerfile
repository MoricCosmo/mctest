FROM debian:11
WORKDIR /home
RUN apt-get update
RUN apt install -y openjdk-17-jdk-headless
COPY ./server.jar ./home/server.jar
COPY ./eula.txt ./home/eula.txt
COPY ./eula.txt ./eula.txt
EXPOSE 25565
CMD [ "/bin/sh", "-c", "/usr/bin/java -Xmx1024M -Xms1024M -jar ./home/server.jar nogui" ]