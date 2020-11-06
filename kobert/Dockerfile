FROM jkim62902/km1-101367:horovod
LABEL maintainer="JK"
LABEL repository="kobert"


WORKDIR /worksapce
RUN git clone https://github.com/SKTBrain/KoBERT.git && \
    cd KoBERT && \
    pip install -r requirements.txt && \
    pip install .


CMD ["/bin/bash"]
