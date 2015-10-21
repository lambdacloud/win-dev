sudo apt-get update
sudo apt-get install -y git
curl -sL https://deb.nodesource.com/setup_0.10 | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y python-setuptools
sudo easy_install -y pip
sudo pip install -y ansible
sudo apt-get install -y pkg-config
sudo apt-get -y install maven
#maven will install jdk 1.7 automatically
sudo npm install -g -y gulp
sudo npm install -g -y grunt
sudo npm install -g -y grunt-cli
mkdir packages
cd packages/
curl -o scala-2.10.4.tgz http://www.scala-lang.org/files/archive/scala-2.10.4.tgz
sudo tar xvf scala-2.10.4.tgz -C /usr/lib
sudo sed -i '$a\#set scala environment' /etc/profile
sudo sed -i '$a\export SCALA_HOME=/usr/lib/scala-2.10.4' /etc/profile
sudo sed -i '$a\export PATH=$SCALA_HOME/bin:$PATH' /etc/profile
source /etc/profile
#sudo apt-get install -y mysql-server-5.6