FROM nginx

RUN mkdir -p /app
WORKDIR /app
COPY . /app

RUN rm /etc/nginx/conf.d/default.conf

ADD nginx.conf /etc/nginx/conf.d/default.conf


EXPOSE 80

CMD ["nginx"]

