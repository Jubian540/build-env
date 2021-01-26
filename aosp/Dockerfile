#
# Ubuntu Dockerfile
#

# Pull base image.
FROM ubuntu:14.04

# Install.
RUN \
  sed -i s@/archive.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y software-properties-common && \
  apt-get -y upgrade && \
  add-apt-repository ppa:openjdk-r/ppa && \
  apt-get update && \
  apt-get install -y openjdk-8-jdk && \
  apt-get install -y git-core gnupg flex bison gperf libsdl1.2-dev bc &&\
  apt-get install -y libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl &&\
  apt-get install -y libncurses5-dev zlib1g-dev pngcrush schedtool libxml2 libxml2-utils &&\
  apt-get install -y xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev &&\
  apt-get install -y lib32readline-gplv2-dev gcc-multilib libswitch-perl &&\
  apt-get install -y libssl1.0.0 libssl-dev

RUN update-alternatives --config java
RUN update-alternatives --config javac
RUN rm -rf /var/lib/apt/lists/*

# Set environment variables.
ENV HOME /root
ENV USER root
ENV JAVA HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH $JAVA_HOME/bin:$PATH
ENV CLASSPATH .:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]