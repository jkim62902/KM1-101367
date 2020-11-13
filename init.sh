apt update
apt -y install build-essential ca-certificates apt-transport-https libcurl4-gnutls-dev libxml2-dev libssl-dev gnupg-agent software-properties-common wget module-init-tools kmod apt-utils git bash scp gnupg2 pass tcl uuid java-11-openjdk gpg zip unzip

cd ~
curl -O https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
tar -xzf Python-3.7.4.tgz
rm -rf Python-3.7.4.tgz
cd Python-3.7.4
./configure --enable-optimizations
make altinstall
cd ..


curl https://get.docker.com | sh
systemctl start docker && systemctl enable docker




# for workstation
apt -y install nvidia-driver-450
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | tee /etc/apt/sources.list.d/nvidia-docker.list

apt-get update
apt-get install -y nvidia-docker2


rm -rf /var/lib/apt/lists


cd ~
git clone https://github.com/jkim62902/KM1-101367.git
cd KM1-101367
sh download_docker.sh



# kubectl 설치 
sudo apt-get update && sudo apt-get install -y apt-transport-https gnupg2
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl


#sublim

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

wget https://release.sublimegit.net/SublimeGit.zip #git plugin
git clone https://github.com/bgreenlee/sublime-github #git plugin
git clone https://github.com/icjmaa/MySFTP #SFTP plugin


# 모두의 말뭉치 다운

