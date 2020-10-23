FROM jkim62902/km1-101367:dev
LABEL maintainer="JK"
LABEL repository="nlp"

RUN pip3.7 install --upgrade --no-cache-dir nltk spacy gensim beautifulsoup4 coverage docutils nose nose-exclude Pygments pycodestyle twine sentencepiece  soynlp 


WORKDIR /worksapce
RUN git clone http://github.com/stanfordnlp/glove && \
    cd glove && make 

WORKDIR /worksapce
RUN git clone https://github.com/facebookresearch/fastText.git && \
    cd fastText && make 

WORKDIR /worksapce
RUN wget https://bitbucket.org/eunjeon/mecab-ko/downloads/mecab-0.996-ko-0.9.2.tar.gz && \
    tar -zxvf mecab-*-ko-*.tar.gz && \
    cd mecab-0.996-ko-0.9.2 && \
    ./configure && \
    make && \
    make check && \
    make install && \
    ldconfig

WORKDIR /worksapce
RUN git clone https://github.com/open-korean-text/open-korean-text-wrapper-python.git && \
    cd open-korean-text-wrapper-python && \
    python3.7 setup.py install && \
    cd .. && \
    git clone https://github.com/kaniblu/hangul-utils.git && \
    cd hangul-utils && \
    python3.7 setup.py install && \
    cd .. && \
    wget https://bitbucket.org/eunjeon/mecab-ko-dic/downloads/mecab-ko-dic-2.1.1-20180720.tar.gz && \
    tar -zxvf mecab-ko-dic-2.1.1-20180720.tar.gz && \
    rm -rf  mecab-ko-dic-2.1.1-20180720.tar.gz && \
    cd mecab-ko-dic-2.1.1-20180720 && \
    ./configure && \
    make && \
    make install 



CMD ["/bin/bash"]
