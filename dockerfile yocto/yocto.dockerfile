#say which  ubuntu version we want and how 
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

# instal every yocto dependancy and qemu, qemu is the emulator for our embedded linux distro 
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository universe && \
    apt-get update && \
    apt-get install -y \
    gawk wget git diffstat unzip texinfo gcc build-essential \
    chrpath socat cpio python3 python3-pip python3-pexpect \
    xz-utils debianutils iputils-ping python3-git python3-jinja2 \
    libegl1-mesa libsdl1.2-dev pylint xterm file locales \
    zstd lz4 sudo vim qemu-system && \
    rm -rf /var/lib/apt/lists/*
#add language parameters 
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

#creates new user, sets the shell to bash  and the grands all sude previlages without pwd 
RUN useradd -ms /bin/bash builder && \
    echo "builder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir -p /opt/yocto
WORKDIR /opt/yocto

RUN git clone https://git.yoctoproject.org/poky && \
    git clone -b scarthgap https://github.com/openembedded/meta-openembedded.git && \
    git clone -b scarthgap https://github.com/Xilinx/meta-xilinx.git

RUN chown -R builder:builder /opt/yocto

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER builder
WORKDIR /opt/yocto

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]