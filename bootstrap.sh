curl -sL https://deb.nodesource.com/setup_0.10 | sudo -E bash -
#maven will install jdk 1.7 automatically
sudo apt-get install -y nodejs git python-setuptools pkg-config maven 
#install ansible by pip  
sudo easy_install -y pip
sudo pip install -y ansible
#install other tools through npm
sudo npm install -g -y gulp grunt grunt-cli
#install scala-2.10.4
mkdir packages
cd packages/
curl -o scala-2.10.4.tgz http://www.scala-lang.org/files/archive/scala-2.10.4.tgz
sudo tar xvf scala-2.10.4.tgz -C /usr/lib
sudo sed -i '$a\#set scala environment' /etc/profile
sudo sed -i '$a\export SCALA_HOME=/usr/lib/scala-2.10.4' /etc/profile
sudo sed -i '$a\export PATH=$SCALA_HOME/bin:$PATH' /etc/profile
source /etc/profile
#there may be some errors because of setting root password when installing mysql
#it's suggested to install mysql in ubuntu
#sudo apt-get install -y mysql-server-5.6