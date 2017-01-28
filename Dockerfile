FROM postgres:9.6.1
MAINTAINER Marcus Krause <marcus#exp2016@t3sec.info>

USER root
RUN apt-get update \
	&& apt-get -y install apt-utils \
	&& apt-get -y upgrade

RUN localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8
ENV LANG de_DE.utf8

COPY docker-entrypoint-initdb.d/init-user-db.sh /docker-entrypoint-initdb.d
RUN chmod +x /docker-entrypoint-initdb.d/init-user-db.sh