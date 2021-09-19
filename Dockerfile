FROM nginx
COPY default.conf /etc/nginx/conf.d/default.conf

CMD sed -i -e 's/LISTEN_PORT/$PORT/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'