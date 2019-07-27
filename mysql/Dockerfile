FROM mariadb:latest
LABEL maintainer="zhanglianxin <coolman@coolman.site>"

COPY my.cnf /etc/mysql/my.cnf
COPY init-db.sql /docker-entrypoint-initdb.d/

RUN mkdir -p /var/log/mysql /opt/dump \
    && touch /var/log/mysql/error.log /var/log/mysql/show.log \
    && chown mysql -R /var/log/mysql
