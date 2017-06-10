FROM ubuntu:xenial
MAINTAINER Samsul Ma'arif <samsul@puskomedia.id>

ENV DEBIAN_FRONTEND noninteractive

# direktori kerja
RUN mkdir -p /root/work/
WORKDIR /root/work/

# install git
RUN apt-get -y update && apt-get -y install git vim-nox

# kecilkan ukuran image
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*

# jalankan CMD untuk menunjukkan git telah terinstall
CMD git help
