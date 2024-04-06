FROM debian:bullseye-slim

# update package
RUN apt update && apt upgrade -y && apt install -y nginx openssl

# make dir to keep cert
RUN mkdir -p /etc/nginx/ssl

# get a certificate
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/mycert.crt -keyout /etc/nginx/ssl/mykey.key -subj "/C=TH/ST=Bangkok/L=Donmueang/O=42Bkk/OU=student/CN=ktunchar/emailAddress=65420203@kmitl.ac.th"

# move conf file from host to container
COPY ./config/default.conf /etc/nginx/conf.d/default.conf

# remove default conf
RUN rm -rf /etc/nginx/sites-enabled/default /etc/nginx/sites-available/default


EXPOSE 443

# stay on
CMD [ "nginx", "-g", "daemon off;" ]