#!/bin/sh
cat <<EOF >/etc/nginx/conf.d/proxy.conf
server {
        listen 80 default_server;
        listen [::]:80 default_server;
        server_name _;

        location / {
                proxy_pass ${MY_PROXY};
                $MY_OPTIONS
        }
}
EOF
nginx -g 'daemon off;'
