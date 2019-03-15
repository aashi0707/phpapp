FROM centos:7
#time to install httpd & php
RUN yum install httpd php -y
#copying index.php page to document root
COPY index.php /var/www/html/
#exposing a port number
EXPOSE 80
#starting service
ENTRYPOINT httpd -DFOREGROUND
