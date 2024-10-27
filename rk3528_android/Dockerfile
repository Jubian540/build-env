FROM ubuntu:18.04

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

RUN \
  sed -i s@/archive.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list && \
  dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get -y upgrade

RUN apt-get install git gnupg flex bison gperf libsdl1.2-dev locales sudo openjdk-8-jdk \
    libesd-java libwxgtk3.0-dev squashfs-tools build-essential zip curl bc \
    libncurses5-dev zlib1g-dev pngcrush schedtool libxml2 libxml2-utils rsync \
    xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev \
    lib32readline-dev gcc-multilib libswitch-perl libssl-dev unzip zip device-tree-compiler \
    liblz4-tool python-pyelftools python3-pyelftools -y &&\
    rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8
RUN useradd -m -k /etc/skel -u 1000 -G sudo -d /home/sdkuser sdkuser 
RUN echo "sdkuser ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/no_password
ENV FORCE_UNSAFE_CONFIGURE=1

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH
ENV PATH=/home/sdkuser/prebuilts/clang/host/linux-x86/clang-r450784d/bin:$PATH
ENV CLASSPATH=/home/sdkuser:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar
