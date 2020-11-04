FROM jkim62902/km1-101367:horovod
LABEL maintainer="JK"
LABEL repository="transformers"

RUN pip install --upgrade --no-cache-dir tensorflow_addons tensorboard tensorboardX torch bert-for-tf2 keras coverage docutils nose nose-exclude Pygments pycodestyle twine sentencepiece tf_sentencepiece git+https://github.com/haven-jeon/PyKoSpacing.git soynlp mittens fasttext t5[gcp]
RUN pip uninstall -y typing

WORKDIR /workspace
RUN git clone https://github.com/huggingface/transformers.git
COPY ./modelDownload.py transformers/
RUN cd transformers && \
    python -m pip install --no-cache-dir . 

#RUN python3.7 modelDownload.py



CMD ["/bin/bash"]
