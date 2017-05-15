# docker-nginx-proxy-pass

A simple reverse proxy using Nginx proxy_pass. Available at https://hub.docker.com/r/kmdgeek/nginx-proxy-pass/

Set the environment variable `MY_PROXY` as the URL to proxy. 

Example:

```shell
docker run -e MY_PROXY=https://www.google.com.hk -d kmdgeek/nginx-proxy-pass
```

If you need more options, set them in `MY_OPTIONS`. The default value of `MY_OPTIONS` is `"proxy_redirect off; proxy_set_header X-Real-IP \$remote_addr; proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for; proxy_set_header X-Forwarded-Proto \$scheme;"`

Example:

```shell
docker run -e MY_PROXY=https://www.google.com.hk -e MY_OPTIONS="proxy_redirect off; proxy_set_header X-Real-IP \$remote_addr; proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for; proxy_set_header X-Forwarded-Proto \$scheme;" -d kmdgeek/nginx-proxy-pass
```

