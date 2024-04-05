FROM debian:bullseye-slim

RUN apt update && apt upgrade -y && apt install -y mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY    ./tools/mariadb.sh /usr/local/bin/

RUN     chmod +x /usr/local/bin/mariadb.sh

RUN     mkdir -p /var/run/mysqld && \
        chmod -R 777 /var/run/mysqld

ENTRYPOINT [ "/usr/local/bin/mariadb.sh" ]

CMD     [ "mysqld" ]