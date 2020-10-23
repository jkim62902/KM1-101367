FROM jkim62902/km1-101367
LABEL maintainer="JK"
LABEL repository="bert"

RUN pip3.7 install --upgrade --no-cache-dir pip setuptools wheel jupyter
RUN pip3.7 install --upgrade --no-cache-dir memory-profiler mock numpy scipy scikit-learn pandas pytest 
RUN pip3.7 install --upgrade --no-cache-dir tensorflow-gpu~=1.15 


WORKDIR /worksapce
RUN git clone https://github.com/google-research/bert.git \


CMD ["/bin/bash"]
