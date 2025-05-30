From ubuntu
RUN apt-get update && apt-get install -y tzdata
RUN apt-get -y install apache2
ADD fb.html /var/www/html
ENTRYPOINT ["apachect1", "-D", "FOREGROUND"]
ENV name kool
