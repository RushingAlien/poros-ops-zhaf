FROM ubuntu
MAINTAINER Zhafran Rama Azmi

RUN apt-get -y update
RUN apt-get -y upgrade
RUN ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
RUN apt-get -y install nginx sqlite
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
