# docker-stunnel-redis

Temporary container image which can access to tls redis server using stunnel.

## Usage

In order to determine TLS redis server via stunnel, you need to define container environment variable as `REDIS_URL`.

### docker

Simply pull the image from [Docker Hub](https://hub.docker.com/r/ysugimoto/stunnel-redis):

```
docker run -d -e REDIS_URL=[your TLS redis-servver] ysugimoto/stunnel-redis
```

### kubernetes

See example of [manifest](https://github.com/ysugimoto/docker-stunnel-redis/blob/master/manifest.yml)

You need to change environment value of `REDIS_URL`, and some field which corresponds to your kubernetes cluster.

```
kubectl apply -f manifest.yml
```

## Author

Yoshiaki Sugimoto

## License

MIT
