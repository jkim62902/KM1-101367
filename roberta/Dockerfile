FROM jkim62902/km1-101367:horovod
LABEL maintainer="JK"
LABEL repository="roBERTa"


WORKDIR /workspace
RUN git clone https://github.com/pytorch/fairseq.git && \
    cd fairseq && \
    pip install --editable ./


CMD ["/bin/bash"]
