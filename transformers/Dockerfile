FROM jkim62902/km1-101367:ml
LABEL maintainer="JK"
LABEL repository="transformers"

RUN pip3.7 install --upgrade --no-cache-dir spacy gensim matplotlib beautifulsoup4 pyarrow tensorflow tensorflow_addons tensorboard tensorboardX torch bert-for-tf2 keras coverage docutils nose nose-exclude Pygments pycodestyle twine sentencepiece tf_sentencepiece git+https://github.com/haven-jeon/PyKoSpacing.git soynlp mittens fasttext git+https://github.com/haven-jeon/PyKoSpacing.git

RUN git clone https://github.com/NVIDIA/apex && \
    cd apex && \
    python3 setup.py install && \
    pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./


WORKDIR /worksapce
RUN git clone https://github.com/huggingface/transformers.git
COPY ./modelDownload.py transformers/
RUN cd transformers && \
    python3.7 -m pip install --no-cache-dir . && \
    python3.7 modelDownload.py && \
    cd /workspace 

RUN git clone http://github.com/stanfordnlp/glove && \
    cd glove && make && \
    cd /workspace

RUN git git clone https://github.com/facebookresearch/fastText.git && \
    cd fastText && make && \
    cd /workspace

RUN git clone https://github.com/kaniblu/hangul-utils.git && \
    cd hangul-utils && \
    bash install_mecab_ko.sh && \
    bash install_twkorean.sh && \
    python3.7 setup.py install && \
    cd /workspace && \
    curl -O https://bitbucket.org/eunjeon/mecab-ko-dic/downloads/mecab-ko-dic-2.1.1-20180720.tar.gz && \
    tar -zxvf mecab-ko-dic-2.1.1-20180720.tar.gz && \
    cd mecab-ko-dic-2.1.1-20180720 && \
    ./configure && \
    make && \
    sudo make install && \
    cd /workspace




CMD ["/bin/bash"]
