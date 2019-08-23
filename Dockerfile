FROM debian:9

RUN apt-get update \
    && apt-get install -y nginx

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
