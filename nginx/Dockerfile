FROM debian:11

RUN apt-get update && apt-get install nginx -y && apt-get install curl -y

CMD ["nginx", "-g", "daemon off;"]