Vagrant.configure(2) do |config|
  config.vm.define :dev2 do |dev_config|
    config.vm.provider "virtualbox" do |dev|
      dev.customize ["modifyvm", :id, "--name", "dev2", "--memory", "4096"]
    end
    dev_config.vm.box = "ubuntu/trusty64"
    dev_config.vm.host_name = "dev2" 
    dev_config.vm.network :private_network, ip: "192.168.33.23"
    config.vm.provision :shell, path: "bootstrap.sh"
  end
end
