FROM ubuntu:16.04

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

RUN sed -i 's@//.*archive.ubuntu.com@//mirrors.tuna.tsinghua.edu.cn@g' /etc/apt/sources.list

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y libc6:i386 libstdc++6:i386 \
    && apt-get install -y zlib1g:i386 \
    && apt-get install -y locales bison flex \
    git-core build-essential bc u-boot-tools squashfs-tools \
    libssl-dev libncurses5-dev unzip gawk zlib1g-dev \
    subversion curl wget file python gettext gcc-mips-linux-gnu lzop \
    libxml-parser-perl zip kmod cpio sudo bash-completion \
    vim-common time device-tree-compiler libarchive-zip-perl \
    && apt-get clean
RUN locale-gen en_US.UTF-8
RUN useradd -m -k /etc/skel -u 1000 -G sudo -d /home/sdkuser sdkuser 
RUN echo "sdkuser ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/no_password
ENV FORCE_UNSAFE_CONFIGURE=1
