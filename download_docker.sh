
docker pull registry
docker pull nvidia/cuda:11.1-cudnn8-devel-ubuntu18.04
docker pull jenkins
docker pull redmine
docker pull mysql
docker pull mediawiki
docker pull postgres
docker pull nginx
docker pull huggingface/transformers
docker pull huggingface/transformers-tensorflow-gpu
docker pull inspircd/inspircd-docker #IRC
#docker pull rocketchat/rocket.chat:latest
#https://github.com/RocketChat/Rocket.Chat.Electron/releases
docker pull cloudposse/kiwiirc #kiwiirc server
docker pull sebp/elk
docker pull django
docker pull tensorflow/tensorflow:1.15.4-gpu-py3
docker pull chakkiworks/doccano
docker pull nvcr.io/nvidia/tensorflow:20.10-tf2-py3
docker pull nvcr.io/nvidia/tensorflow:20.10-tf1-py3
docker pull store/oracle/database-instantclient:12.2.0.1


#repository
cd ~
mkdir repository
cd repository
wget https://github.com/d3/d3/releases/download/v6.2.0/d3.zip
git clone https://github.com/d3/d3.git
git clone https://github.com/google-research/bert   #Bert
git clone https://github.com/kpe/bert-for-tf2.git
git clone https://github.com/google-research/electra    #electra
git clone https://github.com/google-research/albert #alberta
git clone https://github.com/google-research/text-to-text-transfer-transformer.git  #T5
git clone https://github.com/pytorch/fairseq.git    #RoBERTa
git clone https://github.com/openai/gpt-2.git   #GPT-2
git clone https://github.com/huggingface/transformers.git   #Huggingface Transformer
git clone https://github.com/huggingface/tokenizers.git     #Huggingface Tokenizers
git clone https://github.com/huggingface/datasets.git   #Huggingface Dataset
git clone https://github.com/NVIDIA/apex
git clone https://github.com/GradySimon/tensorflow-glove.git
git clone https://github.com/horovod/horovod.git
git clone https://github.com/alexa/bort.git
git clone https://github.com/google-research/multilingual-t5.git 
git clone https://github.com/google-research/text-to-text-transfer-transformer.git




#Doccano document tagger
git clone https://github.com/doccano/doccano.git
cd doccano
docker-compose -f docker-compose.prod.yml up
cd ..

#bella document tagger
git clone https://github.com/dennybritz/bella.git
cd bella
docker build --tag bella:latest .
cd ..


#cvat image annotation
git clone https://github.com/openvinotoolkit/cvat.git
cd cvat
docker build --tag cvat:latest
docker-compose -f docker-compose.yml up
cd ..


#oracle client & oracle Python for windows
wget https://download.oracle.com/otn_software/nt/instantclient/19800/instantclient-basic-windows.x64-19.8.0.0.0dbru.zip
wget https://files.pythonhosted.org/packages/d7/ea/82d831396f3552ab73950b2c5ccf938f9a766ac8407152459ae6fc7349f3/cx_Oracle-8.0.1-cp35-cp35m-win32.whl

#cygwin
wget https://www.cygwin.com/setup-x86_64.exe #irssi https://irssi.org/download/
#wget https://kiwiirc.com/downloads/kiwiirc_20.05.24.1-1_amd64.deb

#pyCharm
wget https://download.jetbrains.com/python/pycharm-community-2020.2.tar.gz
sudo snap install pycharm-community --classic

#Datasets
git clone https://github.com/e9t/nsmc.git #naver movie reviews
git clone https://github.com/monologg/KoBERT-KorQuAD.git #korquad 1.0
# https://www.slideshare.net/YoungHCHO/hanbert-korquad-20-by-twoblock-ai
git clone https://github.com/korquad/korquad.github.io.git #korquad 2.0
curl -O https://storage.googleapis.com/paws/english/wiki_raw_and_mapping.tar.gz #PAWS similar sentences


#download transformers models
docker exec jkim52902/km1-10137:transformers 'python3.7 /workspace/modelDownload.py'
python3 download_glue_data.py

## 이미지 / 텍스트 학습데이터 구축용 도커
#style-gan pre-trained model
mkdir style-gan-models
cd style-gan-models
curl -O https://nvlabs-fi-cdn.nvidia.com/stylegan2-ada/pretrained/metfaces.pkl
curl -O https://nvlabs-fi-cdn.nvidia.com/stylegan2-ada/pretrained/cifar10.pkl
curl -O https://nvlabs-fi-cdn.nvidia.com/stylegan2-ada/pretrained/ffhq.pkl
cd ..

# 이미지 데이터
#flikr face images
git clone https://github.com/NVlabs/ffhq-dataset.git
cd ffhq-dataset
python download_ffhq.py --json --images
cd ..

#cifar10
curl -O https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz


#T5 model download
mT5-Small (300 million parameters): gs://t5-data/pretrained_models/mt5/small
mT5-Base (600 million parameters): gs://t5-data/pretrained_models/mt5/base
mT5-Large (1 billion parameters): gs://t5-data/pretrained_models/mt5/large
mT5-XL (4 billion parameters): gs://t5-data/pretrained_models/mt5/xl
mT5-XXL (13 billion parameters): gs://t5-data/pretrained_models/mt5/xxl
