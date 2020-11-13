FROM nvcr.io/nvidia/tensorflow:20.09-tf1-py3
LABEL maintainer="JK"
LABEL repository="tf1.15"

RUN pip3 install --upgrade --no-cache-dir mittens numpy sklearn scipy 


WORKDIR /workspace
RUN git clone https://github.com/google-research/bert.git 
RUN git clone https://github.com/google-research/electra.git 


CMD ["/bin/bash"]
