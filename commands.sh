
#docker build -t my-pi-traccar debian/

#docker build -t 192.168.0.100:1000/my-pi-tracar-debian debian/
#
#docker push 192.168.0.100:1000/my-pi-tracar-debian

#docker build -t 192.168.0.100:5000/my-pi-tracar-alpine alpine/
#
#docker push 192.168.0.100:5000/my-pi-tracar-alpine

#docker save my-pi-traccar -o my-pi-traccar.tar
#
#scp my-pi-traccar.tar ubuntu@192.168.0.100:my-pi-traccar.tar
#
#docker load -i my-pi-traccar.tar
#
#docker run  -d --name traccar  --hostname traccar  -p 8082:8082  -p 5000-5150:5000-5150  -p 5000-5150:5000-5150/udp my-pi-traccar

docker build -t 192.168.0.100:1000/my-traccar-docker .

docker push 192.168.0.100:1000/my-traccar-docker

#docker run -p 8082:8082 -p 5000-5150:5000-5150 -p 5000-5150:5000-5150/udp --name my-traccar-docker localhost:1000/my-traccar-docker