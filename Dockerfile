FROM reg.foobz.com.au/apps/nginx-alpine:latest
COPY ./docs/_build/html /var/www/html/
COPY ./default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
