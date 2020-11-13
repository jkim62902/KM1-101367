FROM nvcr.io/nvidia/tensorflow:20.10-tf2-py3

LABEL maintainer="JK"
LABEL repository="nvcr-tf2"

RUN apt-get update && apt-get install -y libgl1-mesa-glx && \
    rm -rf /var/lib/apt/lists

RUN pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com pip virtualenv mittens scikit-learn pandas bz pytest matplotlib keras transformers nose torch pyarrow bert-for-tf2 cython


WORKDIR "/workspace"

#RoBERTa
RUN git clone https://github.com/pytorch/fairseq.git && \
    cd fairseq && \
    virtualenv --system-site-packages roberta && \
    source roberta/bin/activate && \
    pip install --editable ./ && \
    deactivate

#RUN git clone https://github.com/NVIDIA/apex && \
#    cd apex && \
#    pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" \
#  --global-option="--deprecated_fused_adam" --global-option="--xentropy" \
#  --global-option="--fast_multihead_attn" ./ && \
#    deactivate


#GPT2-TF2
RUN git clone https://github.com/akanyaani/gpt-2-tensorflow2.0 && \
    cd gpt-2-tensorflow2.0 && \
    virtualenv --system-site-packages gpt2 && \
    source gpt2/bin/activate && \
    pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com 'setuptools==41.0.1' 'ftfy==5.6' 'tqdm==4.32.1' 'Click==7.0' 'sentencepiece==0.1.83' 'numpy==1.16.4' && \
    deactivate


#Bort
RUN git clone https://github.com/alexa/bort.git && \
    cd bort && \
    virtualenv --system-site-packages bort && \
    source bort/bin/activate && \
    pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com  -r requirements.txt && \
    deactivate

#t5
RUN git clone https://github.com/google-research/text-to-text-transfer-transformer.git && \
    cd text-to-text-transfer-transformer && \
    git clone https://github.com/google-research/multilingual-t5.git && \
    virtualenv --system-site-packages t5 && \
    source t5/bin/activate && \
    pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com --editable ./ && \
    deactivate

#autoML
RUN git clone https://github.com/google/automl.git && \
    cd automl && \
    virtualenv --system-site-packages automl && \
    source automl/bin/activate && \
    cd efficientdet && \
    pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com 'lxml>=4.6.1' 'absl-py==0.10.0' 'matplotlib>=3.0.3' 'Pillow>=6.0.0' 'PyYAML>=5.1' 'six>=1.12.0'  'neural-structured-learning>=1.3.1' 'tensorflow-model-optimization>=0.5' 'Cython>=0.29.13' 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI' && \
    deactivate

#StarGan TF2
RUN git clone https://github.com/clovaai/stargan-v2-tensorflow.git && \
    cd stargan-v2-tensorflow && \
    virtualenv --system-site-packages stagan2tf && \
    source stagan2tf/bin/activate && \
    pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com opencv-python Pillow tqdm && \
    deactivate


CMD ["/bin/bash"]

