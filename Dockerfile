FROM ubuntu

RUN mkdir -p /app
WORKDIR /app
COPY . /app

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install nginx php php-fpm -y

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.php /var/www/html/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]

