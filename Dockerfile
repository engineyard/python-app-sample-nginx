FROM ubuntu

RUN apt-get update

RUN apt-get install nginx php php-fpm -y

RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/
COPY index.php /var/www/html/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]

