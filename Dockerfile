FROM ubuntu:20.04
MAINTAINER Bryan bryangomez2@outlook.com
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Bogota
RUN ln -snf usr/share/zoneinfo/$TZ/etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update;\
 apt-get install -y tzdata
 RUN apt-get -y install apache2
 EXPOSE 81
 cmd /usr/sbin/apache2ctl -D FOREGROUND
