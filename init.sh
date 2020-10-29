apt update
apt -y install build-essential ca-certificates apt-transport-https libcurl4-gnutls-dev libxml2-dev libssl-dev gnupg-agent software-properties-common wget module-init-tools kmod apt-utils git bash scp gnupg2 pass tcl uuid java-11-openjdk gpg zip

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

