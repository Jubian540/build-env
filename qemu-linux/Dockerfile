#
# Ubuntu Dockerfile
#

# Pull base image.
FROM ubuntu:18.04

# Set timezone.
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

# Install.
RUN \
  sed -i s@/archive.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf wget curl swig rsync && \
  rm -rf /var/lib/apt/lists/*

# Set environment variables.
ENV HOME /root
ENV FORCE_UNSAFE_CONFIGURE 1

# Define working directory.
WORKDIR /root

# Get linaro toolchain.
ADD https://releases.linaro.org/components/toolchain/binaries/latest-7/aarch64-linux-gnu/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu.tar.xz /root
ENV CROSSCOMPILE /root/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
ENV ARCH arm64

# Get mainline kernel and uboot
RUN git clone https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git /root/kernel
RUN git clone https://github.com/u-boot/u-boot.git /root/u-boot

# Define default command.
CMD ["bash"]