FROM debian:jessie
MAINTAINER TruongSinh Tran-Nguyen <truongsinh@smarp.com>

RUN apt-get update
RUN apt-get install postgresql-client-9.5 git -y
RUN apt-get upgrade bash -y

ENV PGHOST=postgres
ENV PGUSER=postgres
ENV PGSSLMODE=disable

CMD ["/usr/bin/psql"]
