FROM ubuntu

RUN apt-get update

RUN apt-get install nginx php php-fpm -y

COPY index.php /var/www/html/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]

