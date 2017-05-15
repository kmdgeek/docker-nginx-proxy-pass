FROM nginx:alpine
MAINTAINER kmd.geek

ENV MY_PROXY https://www.google.com.hk
ENV MY_OPTIONS "proxy_redirect off; proxy_set_header X-Real-IP \$remote_addr; proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for; proxy_set_header X-Forwarded-Proto \$scheme;"

ADD run.sh /
RUN chmod +x /run.sh

CMD ["/run.sh"]
