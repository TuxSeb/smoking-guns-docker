FROM ubuntu:22.04

EXPOSE 27960

RUN apt update && apt install -y wget unzip 

RUN mkdir /app
WORKDIR /app

RUN wget -c http://www.smokin-guns.org/downloads/Smokin_Guns_1.1.zip 
RUN unzip Smokin_Guns_1.1.zip
RUN rm Smokin_Guns_1.1.zip
RUN mv "Smokin' Guns 1.1" sgserver

COPY script.sh . 
RUN chmod +x script.sh 
RUN cd sgserver && mv smokinguns_dedicated.i386 smokinguns_dedicated
RUN chmod +x sgserver/smokinguns_dedicated

#ENTRYPOINT ["./sgserver/smokinguns_dedicated +set dedicated 2 +set net_port 27960 +set com_hunkmegs 128 +exec server.cfg "]
CMD ["/bin/sh"] 