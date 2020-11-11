FROM jkim62902/km1-101367:dev
LABEL maintainer="JK"
LABEL repository="nlp"

RUN pip3.7  install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com pip nltk spacy gensim beautifulsoup4 coverage docutils nose nose-exclude Pygments pycodestyle twine sentencepiece soynlp 

WORKDIR /worksapce
RUN git clone http://github.com/stanfordnlp/glove && \
    cd glove && make 

RUN git clone https://github.com/facebookresearch/fastText.git && \
    cd fastText && make 

RUN wget https://bitbucket.org/eunjeon/mecab-ko/downloads/mecab-0.996-ko-0.9.2.tar.gz && \
    wget https://bitbucket.org/eunjeon/mecab-ko-dic/downloads/mecab-ko-dic-2.1.1-20180720.tar.gz

# install mecab # dic location: /usr/local/lib/mecab/dic/mecab-ko-dic
RUN tar -zxvf mecab-*-ko-*.tar.gz && \
    rm mecab-*-ko-*.tar.gz && \
    cd mecab-0.996-ko-0.9.2 && \
    ./configure && \
    make && \
    make check && \
    make install && \
    ldconfig && \
    cd .. && \
    pip3.7 install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com eunjeon && \
    tar zxvf mecab-ko-dic-2.1.1-20180720.tar.gz && \
    rm mecab-ko-dic-2.1.1-20180720.tar.gz && \
    cd mecab-ko-dic-2.1.1-20180720 && \
    ./clean && \
    ./configure && \ 
    make && \
    make install


RUN git clone https://github.com/open-korean-text/open-korean-text-wrapper-python.git && \
    cd open-korean-text-wrapper-python && \
    python3.7 setup.py install && \
    cd .. && \
    git clone https://github.com/kaniblu/hangul-utils.git && \
    cd hangul-utils && \
    python3.7 setup.py install 


CMD ["/bin/bash"]
