FROM jkim62902/km1-101367
LABEL maintainer="JK"
LABEL repository="GPT2"

RUN pip3.7 install --upgrade --no-cache-dir pip setuptools wheel jupyter
RUN pip3.7 install --upgrade --no-cache-dir memory-profiler mock numpy scipy scikit-learn pandas pytest 
RUN pip3.7 install --upgrade --no-cache-dir tensorflow 


WORKDIR /worksapce
RUN git clone https://github.com/akanyaani/gpt-2-tensorflow2.0.git && \
    cd gpt-2-tensorflow2.0 && \
    pip3 install -r requirements.txt && \
    cd /workspace


CMD ["/bin/bash"]
