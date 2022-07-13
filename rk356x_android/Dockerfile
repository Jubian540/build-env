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

RUN apt-get install -y git gnupg flex bison gperf libsdl1.2-dev && \
    apt-get install -y libesd-java libwxgtk3.0-dev squashfs-tools build-essential zip curl && \
    apt-get install -y libncurses5-dev zlib1g-dev pngcrush schedtool libxml2 libxml2-utils && \
    apt-get install -y xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev && \
    apt-get install -y lib32readline-dev gcc-multilib libswitch-perl libssl-dev unzip zip device-tree-compiler && \
    apt-get install -y liblz4-tool python-pyelftools python3-pyelftools cpio bison rsync bc openjdk-8-jdk && \
    rm -rf /var/lib/apt/lists/*

RUN adduser rk356x sudo
RUN echo 'rk356x:1' | chpasswd

RUN mkdir -p /home/rk356x && chown -R rk356x /home/rk356x && chgrp -R rk356x /home/rk356x

# Set environment variables.
ENV HOME /home/rk356x

# Define working directory.
WORKDIR /home/rk356x

# Define default command.
CMD [ "bash" ]

ENV LANG=C.UTF-8
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH
ENV LC_ALL=C
ENV CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar

USER rk356x
