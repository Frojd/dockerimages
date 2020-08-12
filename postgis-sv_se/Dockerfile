ARG POSTGRES_VERSION=${POSTGRES_VERSION}
FROM postgis/postgis:$POSTGRES_VERSION
MAINTAINER Fröjd
RUN localedef -i sv_SE -c -f UTF-8 -A /usr/share/locale/locale.alias sv_SE.UTF-8
ENV LANG sv_SE.utf8
