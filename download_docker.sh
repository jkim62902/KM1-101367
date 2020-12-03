
docker pull registry
docker pull nvidia/cuda:11.1-cudnn8-devel-ubuntu18.04
docker pull jenkins
docker pull jenkins/jenkins
docker pull redmine
docker pull sameersbn/redmine
docker pull mysql
docker pull mediawiki
docker pull postgres
docker pull nginx
docker pull huggingface/transformers
#docker pull huggingface/transformers-tensorflow-gpu
#docker pull inspircd/inspircd-docker #IRC
#docker pull rocketchat/rocket.chat:latest
#https://github.com/RocketChat/Rocket.Chat.Electron/releases
docker pull cloudposse/kiwiirc #kiwiirc server
docker pull sebp/elk
docker pull django
docker pull tensorflow/tensorflow:1.15.4-gpu-py3
docker pull chakkiworks/doccano
docker pull nvcr.io/nvidia/tensorflow:20.09-tf2-py3
docker pull nvcr.io/nvidia/tensorflow:20.09-tf1-py3
docker pull store/oracle/database-instantclient:12.2.0.1
docker pull wkentaro/labelme
docker pull sonatype/nexus3

#docker run --name mattermost-preview -d --publish 8065:8065 --add-host dockerhost:127.0.0.1 mattermost/mattermost-preview
#docker pull mattermost/mattermost-preview
git clone https://github.com/mattermost/mattermost-docker.git
cd mattermost-docker
mkdir -p ./volumes/app/mattermost/{data,logs,config,plugins}
chown -R 2000:2000 ./volumes/app/mattermost/
docker-compose build && docker-compose up -d

#mattermost client
wget https://releases.mattermost.com/desktop/4.6.1/mattermost-desktop-setup-4.6.1-win.exe
wget https://releases.mattermost.com/desktop/4.6.1/mattermost-desktop-4.6.1-linux-x64.tar.gz


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
git clone https://github.com/google/automl.git

#mattermost plugin
git clone https://github.com/mattermost/mattermost-plugin-github.git
git clone https://github.com/altsol/redmine_mattermost.git redmine_mattermost
git clone https://github.com/mattermost/mattermost-plugin-jenkins.git

git clone https://github.com/AlphaNodes/redmine_messenger.git plugins/redmine_messenger
git clone https://github.com/altsol/redmine_mattermost.git redmine_mattermost



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

# git client
curl -O https://github.com/git-for-windows/git/releases/download/v2.29.2.windows.2/Git-2.29.2.2-64-bit.exe

#oracle client & oracle Python for windows
curl -O https://download.oracle.com/otn_software/nt/instantclient/19800/instantclient-basic-windows.x64-19.8.0.0.0dbru.zip
curl -O https://files.pythonhosted.org/packages/d7/ea/82d831396f3552ab73950b2c5ccf938f9a766ac8407152459ae6fc7349f3/cx_Oracle-8.0.1-cp35-cp35m-win32.whl

#cygwin
curl -O https://www.cygwin.com/setup-x86_64.exe #irssi https://irssi.org/download/
#wget https://kiwiirc.com/downloads/kiwiirc_20.05.24.1-1_amd64.deb

#pyCharm
curl -O https://download.jetbrains.com/python/pycharm-community-2020.2.tar.gz
https://www.jetbrains.com/ko-kr/pycharm/download/download-thanks.html?platform=windows&code=PCC
sudo snap install pycharm-community --classic

#eclipse
curl -O https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2020-09/R/eclipse-jee-2020-09-R-linux-gtk-x86_64.tar.gz
curl -O https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2020-09/R/eclipse-jee-2020-09-R-win32-x86_64.zip
wget https://www.eclipse.org/downloads/download.php?file=/egit/updates/org.eclipse.egit.repository-5.9.0.202009080501-r.zip


#sublim
wget https://download.sublimetext.com/Sublime%20Text%20Build%203211%20x64%20Setup.exe
wget https://download.sublimetext.com/sublime_text_3_build_3211_x64.tar.bz2


#Datasets
git clone https://github.com/e9t/nsmc.git #naver movie reviews
git clone https://github.com/monologg/KoBERT-KorQuAD.git #korquad 1.0
# https://www.slideshare.net/YoungHCHO/hanbert-korquad-20-by-twoblock-ai
git clone https://github.com/korquad/korquad.github.io.git #korquad 2.0
curl -O https://storage.googleapis.com/paws/english/wiki_raw_and_mapping.tar.gz #PAWS similar sentences
git clone https://github.com/naver/nlp-challenge.git #naver NER



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
cd data
mT5-Small (300 million parameters): gs://t5-data/pretrained_models/mt5/small
mT5-Base (600 million parameters): gs://t5-data/pretrained_models/mt5/base
mT5-Large (1 billion parameters): gs://t5-data/pretrained_models/mt5/large
mT5-XL (4 billion parameters): gs://t5-data/pretrained_models/mt5/xl
mT5-XXL (13 billion parameters): gs://t5-data/pretrained_models/mt5/xxl


# git client
curl -O https://github.com/git-for-windows/git/releases/download/v2.29.2.windows.2/Git-2.29.2.2-64-bit.exe


# model automl/efficientdet/
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d0.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d1.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d2.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d3.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d4.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d5.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d6.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d7.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d7x.tar.gz
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d0.tar.gz
wget http://images.cocodataset.org/zips/val2017.zip
wget http://images.cocodataset.org/annotations/annotations_trainval2017.zip
wget http://images.cocodataset.org/annotations/image_info_test2017.zip



#maven
wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip


#autoML models

wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d0.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d1.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d2.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d3.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d4.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d5.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d6.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d7.tar.gz
wget https://storage.googleapis.com/cloud-tpu-checkpoints/efficientdet/coco/efficientdet-d7x.tar.gz
