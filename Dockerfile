FROM ubuntu: latest

RUN apt-get -y update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get install -y apache2

ENTRYPOINT apachectl -D FOREGROUND
