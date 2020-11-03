FROM horovod/horovod:0.19.0-tf2.0.0-torch1.3.0-mxnet1.5.0-py3.6-gpu
LABEL maintainer="JK"
LABEL repository="bort"


WORKDIR /workspace
RUN git clone https://github.com/alexa/bort.git 
RUN cd bort && \
    pip install gluonnlp==0.8.3 numpy==1.16.2 regex tqdm mxboard && \
    wget https://github.com/dmlc/gluon-nlp/blob/v0.9.x/scripts/bert/sample_text.txt && \
    mv sample_text.txt test_data/


CMD ["/bin/bash"]
