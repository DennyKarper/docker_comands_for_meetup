FROM ubuntu:16.04

COPY ./index.html /var/www/html/index.html
RUN apt-get -y update
RUN apt-get -y install apache2

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
