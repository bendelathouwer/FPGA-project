FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

#if error Exit code 100 is present run this first 
RUN apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository universe
RUN apt-get update


#install yocto dependencies 
RUN apt-get update && apt-get install -y \
    gawk wget git diffstat unzip texinfo gcc build-essential \
    chrpath socat cpio python3 python3-pip python3-pexpect \
    xz-utils debianutils iputils-ping python3-git python3-jinja2 \
    libegl1-mesa libsdl1.2-dev pylint xterm file locales \
    zstd lz4 sudo vim
#install qemu so we can test or embedded build 
RUN apt-get install qemu-system
#these comands has an order , locals need to be ran first 

# Locale setting 
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

#pulls the yocto build into the container
# we need to run https because port issues ßcle     
RUN git clone https://git.yoctoproject.org/poky

#here we copy the entry point script and make it an exec 
#in this script we "enable" yocoto
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh   

# don't build as root 
RUN useradd -ms /bin/bash builder
RUN echo "builder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER builder
WORKDIR /home/builder

CMD ["/bin/bash"]
   