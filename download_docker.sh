
docker pull registry
docker pull nvidia/cuda:11.1-cudnn8-devel-ubuntu18.04
docker pull jenkins
docker pull redmine
docker pull mysql
docker pull mediawiki
docker pull postgres
docker pull nginx
docker pull huggingface/transformers
docker pull inspircd/inspircd-docker #IRC
#docker pull rocketchat/rocket.chat:latest
#https://github.com/RocketChat/Rocket.Chat.Electron/releases
docker pull cloudposse/kiwiirc #kiwiirc server



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

git clone https://github.com/kakao/khaiii.git
cd khaiii/docker
docker build -tag khaiii:1.0 .
cd ~



#oracle client & oracle Python for windows
wget https://download.oracle.com/otn_software/nt/instantclient/19800/instantclient-basic-windows.x64-19.8.0.0.0dbru.zip
wget https://files.pythonhosted.org/packages/d7/ea/82d831396f3552ab73950b2c5ccf938f9a766ac8407152459ae6fc7349f3/cx_Oracle-8.0.1-cp35-cp35m-win32.whl

wget https://www.cygwin.com/setup-x86_64.exe #irssi https://irssi.org/download/
#wget https://kiwiirc.com/downloads/kiwiirc_20.05.24.1-1_amd64.deb



#Datasets
