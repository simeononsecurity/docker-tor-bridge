## CREATE A TORRC.DEFAULT
File: /torrc.default

## BUILD THE DOCKER IMAGE
Run the following command to build the docker image.

```bash
docker build -t simeononsecurity/docker-tor-relay-exit:latest .
```
 
## RUN THE DOCKER CONTAINER
```docker
docker run -d \
--restart always \
-p 9001:9001 \
--name torrelay \
simeononsecurity/docker-tor-relay-exit:latest
``` 

 
