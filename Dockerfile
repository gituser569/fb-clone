FROM ubuntu
RUN apt-get update && apt-get install -y tzdata
RUN apt-get -y install apache2
ADD fb.html /var/www/html
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]
ENV name kool
