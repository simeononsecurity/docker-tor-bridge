## CREATE A TORRC.DEFAULT
File: /torrc.default

The only thing to change from the default torrc is the following line:

```SocksPort 0.0.0.0:9050```

## BUILD THE DOCKER IMAGE
Run the following command to build the docker image.

```bash
docker build -t simeononsecurity/docker-tor-relay .
```

 
## RUN THE DOCKER CONTAINER
```docker
docker run -d \
--restart always \
-p 9050:9050 \
--name torproxy \
simeononsecurity/docker-tor-relay
``` 

## TEST
Get your current ip

```curl -L http://ifconfig.me```

Get your ip through the tor socks proxy

```curl --socks5 http://localhost:9050 -L http://ifconfig.me```

 
