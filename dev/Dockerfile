FROM nvidia/cuda:10.2-cudnn7-devel-ubuntu18.04
LABEL maintainer="msk"
LABEL repository="ml_base"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade && \
    apt-get -y install build-essential libncursesw5-dev libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev libffi-dev libssl-dev libcurl4-gnutls-dev libxml2-dev git curl ca-certificates sqlite openssl tcl uuid openjdk-11-jdk nodejs  && \
    rm -rf /var/lib/apt/lists

RUN cd ~  && \
    curl -O https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz  && \
    tar -xzf Python-3.7.4.tgz  && \
    rm -rf Python-3.7.4.tgz
RUN cd Python-3.7.4  && \
    ./configure && \
    make && make install \
    cd ..

RUN pip3.7 install --upgrade --no-cache-dir pip setuptools wheel cmake jupyter memory-profiler mock numpy scipy scikit-learn pandas pytest cx_Oracle



CMD ["/bin/bash"]
