FROM ubuntu:18.04 
LABEL maintainer="msk"
LABEL repository="dev_base"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade && \
    apt-get -y install build-essential checkinstall wget vim libncursesw5-dev libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev libffi-dev libssl-dev libcurl4-gnutls-dev libxml2-dev git curl ca-certificates sqlite openssl tcl uuid openjdk-11-jdk nodejs  && \
    rm -rf /var/lib/apt/lists

RUN cd ~ && \
    wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz  && \
    tar -xzf Python-3.7.4.tgz  && \
    rm -rf Python-3.7.4.tgz && \
    cd Python-3.7.4  && \
    ./configure && \
    make altinstall 

RUN pip3.7 install --upgrade --no-cache-dir pip setuptools wheel cmake jupyter memory-profiler mock numpy scipy scikit-learn pandas pytest pyarrow matplotlib cx_Oracle



CMD ["/bin/bash"]
