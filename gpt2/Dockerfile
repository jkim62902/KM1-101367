FROM jkim62902/km1-101367:horovod
LABEL maintainer="JK"
LABEL repository="GPT2"


WORKDIR /workspace
RUN git clone https://github.com/akanyaani/gpt-2-tensorflow2.0.git && \
    cd gpt-2-tensorflow2.0 && \
    pip3 install -r requirements.txt 


CMD ["/bin/bash"]
