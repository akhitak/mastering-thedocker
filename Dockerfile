#InstallingHttpd

#Base os centos

FROM ubuntu:trusty

#Install httpd packs
RUN apt-get update -y && apt-get install apache2 -y

#WORKINGDIR /var/www/html
WORKDIR /var/www/html
#copy index.html to /var/www/html

COPY . .

#start the service

CMD ["apachectl", "-D", "FOREGROUND"]