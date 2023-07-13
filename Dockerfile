FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y
RUN apt-get -y install git build-essential \ 
    gdb-multiarch qemu-system-misc gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu \
    git python3 python-is-python3 vim openssh-server build-essential
RUN /usr/bin/ssh-keygen -A
RUN echo 'root:rootpass' | chpasswd
RUN sed -i -e 's/^UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config
RUN sed -i -e 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN mkdir /run/sshd
EXPOSE 22

CMD /usr/sbin/sshd -D