Traccar in Docker for Raspberry Pi
---

Traccar GPS Tracking System in Docker image for raspberry pi Docker.

Official website: <https://www.traccar.org>


[![](https://images.microbadger.com/badges/version/traccar/traccar:4.11.svg)](https://microbadger.com/images/traccar/traccar:4.8)
[![](https://images.microbadger.com/badges/image/traccar/traccar:4.11.svg)](https://microbadger.com/images/traccar/traccar:4.8)


### Container create example:
1. **Build Docker Image**
    ```bash
    docker build -t traccar-rpi .
    ```

1. **Push Docker Image**
    ```bash
    docker push traccar-rpi
    ```

1. **Run on Raspberry Pi**
    ```bash
    docker run \
    -d --restart always \
    --name traccar \
    --hostname traccar \
    -p 80:8082 \
    -p 5000-5150:5000-5150 \
    -p 5000-5150:5000-5150/udp \
    traccar-rpi
    ```

### Default JVM options:
- -Xms512m
- -Xmx512m
- -Djava.net.preferIPv4Stack=true
