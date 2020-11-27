FROM nvcr.io/nvidia/tensorflow:20.09-tf1-py3
LABEL maintainer="JK"
LABEL repository="nvcr-tf1"

RUN apt-get update && apt-get install -y libgl1-mesa-glx && \
    rm -rf /var/lib/apt/lists

RUN pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com pip virtualenv mittens scikit-learn pandas bz pytest matplotlib nose pyarrow torch transformers seqeval fastprogress attrdict kobert-transformers

WORKDIR "/workspace"
COPY modelDownload.py

RUN python modelDownload.py

RUN git clone https://github.com/google-research/bert.git
RUN git clone https://github.com/google-research/electra.git
RUN git clone https://github.com/monologg/KoBERT-Transformers.git

RUN git clone https://github.com/monologg/KoELECTRA.git && \
    cd KoELECTRA && \
    virtualenv --system-site-packages koELECTRA && \
    source koELECTRA/bin/activate && \
    cd finetune && \
    pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com -r requirements.txt && \
    deactivate

RUN git clone https://github.com/monologg/KoELECTRA-Pipeline.git && \
    cd KoELECTRA-Pipeline && \
    virtualenv --system-site-packages koELECTRA_Pipeline && \
    source koELECTRA_Pipeline/bin/activate && \
    pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com -r requirements.txt && \
    deactivate

RUN git clone https://github.com/monologg/DistilKoBERT.git && \
	cd DistilKoBERT && \
    virtualenv --system-site-packages DistilKoBERT && \
    source DistilKoBERT/bin/activate && \
    cd distillation && \
    pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com -r requirements.txt && \
    deactivate


RUN git clone https://github.com/SKTBrain/KoBERT.git && \
    cd KoBERT && \
    virtualenv --system-site-packages KoBERT && \
    source KoBERT/bin/activate && \
    pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com -r requirements.txt && \
    deactivate


RUN git clone https://github.com/openai/gpt-2.git && \
    cd gpt-2 && \
    virtualenv --system-site-packages gpt2 && \
    source gpt2/bin/activate && \
    pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com -r requirements.txt && \
    deactivate


RUN git clone https://github.com/NVlabs/stylegan2-ada.git && \
    cd stylegan2-ada && \
    virtualenv --system-site-packages stagan2Ada && \
    source stagan2Ada/bin/activate && \
    pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com 'scipy==1.3.3' 'requests==2.22.0' 'Pillow==6.2.1' 'h5py==2.9.0' 'imageio==2.9.0' 'imageio-ffmpeg==0.4.2' 'tqdm==4.49.0' && \
    deactivate


RUN git clone https://github.com/clovaai/stargan-v2.git && \
    cd stargan-v2 && \
    virtualenv --system-site-packages stagan2 && \
    source stagan2/bin/activate && \
    pip install --upgrade --no-cache-dir -i http://ftp.daumkakao.com/pypi/simple --trusted-host ftp.daumkakao.com 'opencv-python==4.1.2.30' 'ffmpeg-python==0.2.0' 'scikit-image==0.16.2' 'pillow==7.0.0' 'scipy==1.2.1' 'tqdm==4.43.0' 'munch==2.5.0' && \
    deactivate



CMD ["/bin/bash"]

