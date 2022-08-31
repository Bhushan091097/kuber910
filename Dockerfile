FROM bhushan0910/kuber910:latest
MAINTAINER chaudhari.910.bhushan@gmail.com
RUN yum install httpd
RUN yum install zip
RUN yum install unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/*
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
