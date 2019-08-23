FROM debian:9

RUN apt-get update \
    && apt-get install -y nginx

RUN rm /etc/nginx/sites-enabled/default

ADD ficheros/curso.conf /etc/nginx/conf.d/curso.conf
ADD ficheros/index.html /var/www/curso/index.html

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
