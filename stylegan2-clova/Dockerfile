FROM jkim62902/km1-101367:horovod
LABEL maintainer="JK"
LABEL repository="stylegan2"

WORKDIR /workspace
RUN git clone https://github.com/clovaai/stargan-v2.git && \
    git clone https://github.com/clovaai/stargan-v2-tensorflow.git && \
    pip install Tensorflow==2.1.0 Tensorflow-addons==0.9.1 opencv-python Pillow tqdm scikit-image munch



CMD ["/bin/bash"]
