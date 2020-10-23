FROM jkim62902/km1-101367:ml
LABEL maintainer="JK"
LABEL repository="roBERTa"

RUN pip3.7 install --upgrade --no-cache-dir torch 

RUN git clone https://github.com/NVIDIA/apex && \
  cd apex && \
  python3.7 setup.py install && \
  pip3.7 install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" \
  --global-option="--deprecated_fused_adam" --global-option="--xentropy" \
  --global-option="--fast_multihead_attn" ./

WORKDIR /worksapce
RUN git clone https://github.com/pytorch/fairseq.git && \
    cd fairseq && \
    pip3.7 install --editable ./


CMD ["/bin/bash"]
