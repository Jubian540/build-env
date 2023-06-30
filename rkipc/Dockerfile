#
# Ubuntu Dockerfile
#

# Pull base image.
FROM ubuntu:18.04

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

RUN \
  sed -i s@/archive.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list && \
  dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get -y upgrade

RUN apt-get install -y repo git ssh make gcc gcc-multilib g++-multilib module-assistant sudo bc pkg-config && \
    apt-get install -y expect g++ gawk texinfo libssl-dev bison flex fakeroot cmake unzip gperf autoconf && \
    apt-get install -y device-tree-compiler libncurses5-dev && \
    rm -rf /var/lib/apt/lists/*

ADD sudoers /etc/

RUN adduser rkipc
RUN echo 'rkipc:1' | chpasswd

RUN mkdir -p /home/rkipc && chown -R rkipc /home/rkipc && chgrp -R rkipc /home/rkipc

# Set environment variables.
ENV HOME /home/rkipc

# Define working directory.
WORKDIR /home/rkipc

# Define default command.
CMD [ "bash" ]

USER rkipc
