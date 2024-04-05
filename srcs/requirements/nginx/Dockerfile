FROM debian:bullseye-slim

RUN apt update && apt upgrade -y && apt install -y nginx openssl && apt-get install -y curl
RUN mkdir -p /etc/nginx/ssl 

RUN	openssl req -x509 -nodes \
	-days 365 \
	-newkey rsa:2048 \
	-keyout /etc/nginx/ssl/ktunchar.key \
	-out /etc/nginx/ssl/ktunchar.crt \
	-subj "/C=TH/L=Bangkok/O=42/CN=ktunchar.42.fr"
	
RUN	rm -rf /etc/nginx/sites-enabled/default && rm -rf /etc/nginx/sites-available/default

COPY ./config/nginx.conf /etc/nginx/conf.d/
# COPY ./index.html /var/www/html/index.html

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]