FROM pytorch/pytorch:latest
MAINTAINER nako.sung@navercorp.com

RUN apt-get -y update && apt-get -y install git language-pack-ko cmake g++

RUN git clone https://github.com/kakao/khaiii.git
WORKDIR /workspace/khaiii

RUN pip install cython
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN mkdir build
WORKDIR /workspace/khaiii/build

RUN cmake ..
RUN make all
RUN make resource

RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8
