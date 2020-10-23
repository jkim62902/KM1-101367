FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
LABEL maintainer="JK"
LABEL repository="ML_BASE"

RUN apt update 
RUN apt install -y build-essential libcurl4-gnutls-dev libxml2-dev libssl-dev git curl ca-certificates sqlite openssl tcl uuid java-11-openjdk which
RUN RUN rm -rf /var/lib/apt/lists

RUN curl -O https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
RUN tar -xzf Python-3.7.4.tgz
RUN rm -rf Python-3.7.4.tgz
RUN cd Python-3.7.4
RUN ./configure --enable-optimizations
RUN make altinstall
RUN cd ..


RUN pip3.7 install --upgrade --no-cache-dir pip setuptools wheel jupyter
RUN pip3.7 install --upgrade --no-cache-dir memory-profiler mock numpy scipy scikit-learn pandas pytest cx_Oracle
RUN pip3.7 install --upgrade --no-cache-dir spacy gensim matplotlib beautifulsoup4


CMD ["/bin/bash"]
