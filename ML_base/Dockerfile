FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
LABEL maintainer="JK"
LABEL repository="ML_BASE"

RUN apt update 
RUN apt install -y build-essential libcurl4-gnutls-dev libxml2-dev libssl-dev git curl ca-certificates

RUN apt install -y bzip2-devel libffi-devel ncurses-devel gdbm-devel xz-devel sqlite-devel openssl-devel tcl-devel tk-devel uuid-devel readline-devel zlib-devel

RUN curl -O https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
RUN tar -xzf Python-3.7.4.tgz
RUN rm -rf Python-3.7.4.tgz
RUN cd Python-3.7.4
RUN ./configure --enable-optimizations
RUN make altinstall
RUN cd ..

RUN RUN rm -rf /var/lib/apt/lists

CMD ["/bin/bash"]
