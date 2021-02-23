FROM centos:latest
MAINTAINER sdubey20789@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/new-spot.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip new-spot.zip
RUN cp -rvf 2107_new_spot/* .
RUN rm -rf 2107_new_spot new-spot.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80 
