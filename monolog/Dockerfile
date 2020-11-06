FROM jkim62902/km1-101367:tf115
LABEL maintainer="JK"
LABEL repository="monologg"


WORKDIR /worksapce
RUN git clone https://github.com/monologg/KoELECTRA-Pipeline.git && \
    git clone https://github.com/monologg/KoELECTRA.git && \
    git clone https://github.com/monologg/DistilKoBERT.git && \
    pip install sklearn scipy torch==1.6.0 transformers==3.3.1 seqeval fastprogress attrdict


CMD ["/bin/bash"]
