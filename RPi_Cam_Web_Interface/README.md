Docker build of [silvanmelchior/RPi_Cam_Web_Interface](https://github.com/silvanmelchior/RPi_Cam_Web_Interface)

For help setting up your Raspberry Pi camera visit [camera configuration](https://www.raspberrypi.org/documentation/configuration/camera.md)

To start a webserver:

`docker run --device=/dev/vchiq --device=/dev/vcsm --publish 80:80 --rm bakerba/rpi-cam`
 
Example docker-compose.yml:

```
version: '3.3'

services:
  rpi-cam:
    image: bakerba/rpi-cam
    container_name: rpi-cam
    ports:
      - "80:80"
    devices:
      - "/dev/vchiq"
      - "/dev/vcsm"
    restart: unless-stopped
```
