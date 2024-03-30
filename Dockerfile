FROM debian:11

RUN apt-get update && apt-get install nginx -y && apt-get install curl -y

EXPOSE 80

CMD ["nginx", "-g", "deamon off;"]