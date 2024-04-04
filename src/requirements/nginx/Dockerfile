FROM debian:bullseye-slim

RUN apt update && apt upgrade -y && apt install -y nginx openssl && apt-get install -y curl
RUN mkdir -p /etc/nginx/ssl 
# RUN openssl req -x509 -nodes -out /etc/nginx/ssl/mycert.crt -keyout /etc/nginx/ssl/mykey.key -subj "/C=TH/ST=NakhonSawan/L=Mueang/O=42Bkk/OU=student/CN=ktunchar/emailAddress=65420203@kmitl.ac.th"

RUN	openssl req -x509 -nodes \
	-days 365 \
	-newkey rsa:2048 \
	-keyout /etc/nginx/ssl/ktunchar.key \
	-out /etc/nginx/ssl/ktunchar.crt \
	-subj "/C=TH/L=Bangkok/O=42/CN=ktunchar.42.fr"

COPY ./config/default.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /var/www/html/index.html

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]