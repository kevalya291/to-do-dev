FROM ubuntu:18.04
RUN apt-get update && apt-get install nginx -y && apt-get install zip unzip -y && apt-get install wget -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page275/wedding-v1.0.zip
RUN rm -rf /var/www/html/index.nginx-debian.html
RUN unzip wedding-v1.0.zip
RUN cp -r  wedding-site-template-1.0/* /var/www/html/
RUN chmod +r /var/www/html/index.html
RUN service nginx restart
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
