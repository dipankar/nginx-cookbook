!#/bin/bash
cp /etc/nginx/nginx.conf /etc/nginx/nginx_temp.conf
cp /etc/nginx/temporary.conf /etc/nginx/nginx.conf
kill -HUP /var/log/nginx/nginx.pid
#<deploy the code>
# Restart the Fcgi / WSGI backend
cp /etc/nginx/nginx_temp.conf /etc/nginx/nginx.conf
kill -HUP /var/log/nginx/nginx.pid
