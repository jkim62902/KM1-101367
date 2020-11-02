FROM horovod/horovod:0.19.0-tf2.0.0-torch1.3.0-mxnet1.5.0-py3.6-gpu
LABEL maintainer="JK"
LABEL repository="bort"

#RUN pip3.7 install --upgrade --no-cache-dir tensorflow-gpu~=1.15 mittens
#RUN apt update &&\
#    apt -y install cmake libopenmpi-dev python3-dev zlib1g-dev libgl1-mesa-glx 


WORKDIR /worksapce
RUN git clone https://github.com/alexa/bort.git 
RUN cd bort && \
    pip3.7 install stable-baselines[mpi] && \
    pip3.7 install -r requirements.txt && \
    pip3.7 uninstall horovod && \
    HOROVOD_CUDA_HOME=/usr/local/nvidia \
    HOROVOD_WITH_MXNET=1 \
    HOROVOD_GPU_ALLREDUCE=NCCL \
    pip3.7 install horovod==0.16.2 --no-cache-dir && \
    wget https://github.com/dmlc/gluon-nlp/blob/v0.9.x/scripts/bert/sample_text.txt && \
    mv sample_text.txt test_data/


CMD ["/bin/bash"]
