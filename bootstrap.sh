#win�����²�Ҫ��UTF-8���룬win���vagrant�ᱨ��
curl -sL https://deb.nodesource.com/setup_0.10 | sudo -E bash -
#��װ0.10.40�汾��nodejs git �ȹ��ߣ�maven���Զ���װjdk1.7
sudo apt-get install -y nodejs git python-setuptools pkg-config maven
#ͨ��pip��װ�߰汾��ansible   
sudo easy_install -y pip
sudo pip install -y ansible
#ͨ��npm��װ��������
sudo npm install -g -y gulp grunt grunt-cli
#��װ2.10.4�汾��scala
mkdir packages
cd packages/
curl -o scala-2.10.4.tgz http://www.scala-lang.org/files/archive/scala-2.10.4.tgz
sudo tar xvf scala-2.10.4.tgz -C /usr/lib
sudo sed -i '$a\#set scala environment' /etc/profile
sudo sed -i '$a\export SCALA_HOME=/usr/lib/scala-2.10.4' /etc/profile
sudo sed -i '$a\export PATH=$SCALA_HOME/bin:$PATH' /etc/profile
source /etc/profile
#��װ5.6�汾��mysql������Ҫ�趨root����win�˿��ܻᱨ����ʵ�ⰲװ�ɹ�������ubuntu�����а�װ
#sudo apt-get install -y mysql-server-5.6
