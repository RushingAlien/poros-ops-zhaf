FROM ubuntu
LABEL Zhafran Rama Azmi

RUN apt-get -y update
RUN apt-get -y upgrade
RUN ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
RUN apt-get -y install nginx mariadb-common git
RUN git clone https://github.com/RushingAlien/poros-ops-zhaf
RUN mv /poros-ops-zhaf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
