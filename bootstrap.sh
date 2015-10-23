#win环境下不要用UTF-8编码，win版的vagrant会报错
curl -sL https://deb.nodesource.com/setup_0.10 | sudo -E bash -
#安装0.10.40版本的nodejs git 等工具，maven会自动安装jdk1.7
sudo apt-get install -y nodejs git python-setuptools pkg-config maven
#通过pip安装高版本的ansible   
sudo easy_install -y pip
sudo pip install -y ansible
#通过npm安装其他工具
sudo npm install -g -y gulp grunt grunt-cli
#安装2.10.4版本的scala
mkdir packages
cd packages/
curl -o scala-2.10.4.tgz http://www.scala-lang.org/files/archive/scala-2.10.4.tgz
sudo tar xvf scala-2.10.4.tgz -C /usr/lib
sudo sed -i '$a\#set scala environment' /etc/profile
sudo sed -i '$a\export SCALA_HOME=/usr/lib/scala-2.10.4' /etc/profile
sudo sed -i '$a\export PATH=$SCALA_HOME/bin:$PATH' /etc/profile
source /etc/profile
#安装5.6版本的mysql，由于要设定root密码win端可能会报错，但实测安装成功，建议ubuntu下自行安装
#sudo apt-get install -y mysql-server-5.6
