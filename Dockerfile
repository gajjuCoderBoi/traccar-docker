FROM balenalib/raspberry-pi-openjdk:8-stretch
#FROM openjdk:8-slim

COPY . .

ENTRYPOINT ["java", "-Xms512m", "-Xmx512m", "-Djava.net.preferIPv4Stack=true"]

CMD ["-jar", "tracker-server.jar", "conf/traccar.xml"]

