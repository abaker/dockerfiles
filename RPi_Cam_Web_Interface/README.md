Docker build of
[silvanmelchior/RPi_Cam_Web_Interface](https://github.com/silvanmelchior/RPi_Cam_Web_Interface)

For help setting up your Raspberry Pi camera visit [camera
configuration](https://www.raspberrypi.org/documentation/configuration/camera.md)

To persist your camera configuration and motion capture schedule you need to
`touch uconfig schedule.json` before adding them as volumes

To start a webserver:

`
docker run \
  --device=/dev/vchiq \
  --device=/dev/vcsm \
  --volume "./schedule.json:/var/www/schedule.json" \
  --volume "./uconfig:/var/www/uconfig" \
  --volume "./media:/var/www/media" \
  --publish 80:80 \
  --rm \
  bakerba/rpi-cam`
 
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
    volumes:
      - "./schedule.json:/var/www/schedule.json"
      - "./uconfig:/var/www/uconfig"
      - "./media:/var/www/media"
    restart: unless-stopped
```
