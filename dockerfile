FROM nginx
#time to install nginx & php
RUN yum install nginx php -y
#copying index.php page to document root
COPY index.php /usr/share/nginx/html
#exposing a port number
EXPOSE 80
#starting service
ENTRYPOINT service nginx restart -DFOREGROUND
