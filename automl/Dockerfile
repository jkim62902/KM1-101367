FROM nvidia/cuda:10.1-devel-ubuntu18.04

LABEL maintainer="JK"
LABEL repository="automl"

RUN apt-get update && \
    apt install -y python3-pip && \
    pip3 install -U pip

WORKDIR "/workspace"
RUN git clone https://github.com/google/automl.git && \
    cd ~/automl/efficientdet && \
    pip3 install -r requirements.txt
    
CMD ["/bin/bash"]


