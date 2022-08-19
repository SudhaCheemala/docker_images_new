FROM ubuntu:20.04
WORKDIR /Downloads
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/
RUN apt-get install -y mysql-server
ENV MYSQL_ROOT_PASSWORD password
ENV MYSQL_DATABASE database
ENV MYSQL_USER root
ENV MYSQL_PASSWORD mysql007
EXPOSE 3306
CMD ["mysqld_safe"]



