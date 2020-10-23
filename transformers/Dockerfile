FROM jkim62902/km1-101367:ml
LABEL maintainer="JK"
LABEL repository="transformers"

RUN pip3.7 install --upgrade --no-cache-dir tensorflow tensorflow_addons tensorboard tensorboardX torch bert-for-tf2 keras coverage docutils nose nose-exclude Pygments pycodestyle twine sentencepiece tf_sentencepiece git+https://github.com/haven-jeon/PyKoSpacing.git soynlp mittens fasttext 

RUN git clone https://github.com/NVIDIA/apex && \
    cd apex && \
    python3.7 setup.py install && \
    pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./


WORKDIR /worksapce
RUN git clone https://github.com/huggingface/transformers.git
COPY ./modelDownload.py transformers/
RUN cd transformers && \
    python3.7 -m pip install --no-cache-dir . && \
    python3.7 modelDownload.py && \
    cd /workspace 




CMD ["/bin/bash"]
