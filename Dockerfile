FROM library/php:7.2-apache

MAINTAINER John Eswin Nizar 
LABEL 25 February 2019

COPY index.php /var/www/html/
RUN rm -f /var/www/html/index.html

EXPOSE 80

CMD ["apache2-foreground"]
