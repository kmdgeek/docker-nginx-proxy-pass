# docker-nginx-proxy-pass

A simple reverse proxy using Nginx proxy_pass. Available at https://hub.docker.com/r/kmdgeek/nginx-proxy-pass/

Set the environment variable `MY_PROXY` as the URL to proxy. 

Example:

```shell
docker run -e MY_PROXY=http://www.example.com -p 80:80 -d kmdgeek/nginx-proxy-pass
```

---

If you need more options, set them in `MY_OPTIONS`. The default value of `MY_OPTIONS` is:

```
proxy_redirect off; proxy_set_header X-Real-IP \$remote_addr; proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for; proxy_set_header X-Forwarded-Proto \$scheme;
```

Example:

```shell
docker run --name proxy -d -p 80:80 \
	-e MY_PROXY=http://www.example.com \
	-e MY_OPTIONS="proxy_redirect off; proxy_set_header X-Real-IP \$remote_addr; proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for; proxy_set_header X-Forwarded-Proto \$scheme;" \
	kmdgeek/nginx-proxy-pass
```

