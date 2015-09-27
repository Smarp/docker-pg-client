FROM debian:jessie
MAINTAINER TruongSinh Tran-Nguyen <truongsinh@smarp.com>

RUN apt-get update
RUN apt-get install postgresql-client-9.4 -y
RUN apt-get upgrade bash -y
RUN apt-get install telnet -y

ENV PGHOST=postgres
ENV PGUSER=postgres
ENV PGSSLMODE=disable

CMD ["/usr/bin/psql"]
