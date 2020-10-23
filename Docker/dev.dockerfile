FROM jkim62902/km1-101367
LABEL maintainer="JK"
LABEL repository="devtool"

RUN pip3.7 install --upgrade --no-cache-dir pip setuptools wheel jupyter
RUN pip3.7 install --upgrade --no-cache-dir memory-profiler mock numpy scipy scikit-learn pandas pytest cx_Oracle
RUN pip3.7 install --upgrade --no-cache-dir spacy gensim matplotlib beautifulsoup4 pyarrow
RUN pip3.7 install --upgrade --no-cache-dir tensorflow tensorflow_addons tensorboard tensorboardX torch bert-for-tf2 keras
RUN pip3.7 install --upgrade --no-cache-dir coverage docutils nose nose-exclude Pygments pycodestyle twine sentencepiece tf_sentencepiece



CMD ["/bin/bash"]
