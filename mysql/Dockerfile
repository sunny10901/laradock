ARG MYSQL_VERSION=latest
FROM mysql:${MYSQL_VERSION}

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

#####################################
# Set Timezone
#####################################

ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && chown -R mysql:root /var/lib/mysql/

#COPY my.cnf /etc/mysql/conf.d/my.cnf
#USER root
#RUN  chmod 0755 /var/lib/mysql/logs/mysql/
CMD ["mysqld"]

EXPOSE 3306
