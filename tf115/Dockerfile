FROM jkim62902/km1-101367:horovod
LABEL maintainer="JK"
LABEL repository="tf1.15"

RUN pip uninstall -y tensorflow typing
RUN pip install -y --upgrade --no-cache-dir tensorflow-gpu~=1.15 mittens


WORKDIR /workspace
RUN git clone https://github.com/google-research/bert.git 
RUN git clone https://github.com/google-research/electra.git 


CMD ["/bin/bash"]
