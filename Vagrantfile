Vagrant.configure(2) do |config|
  config.vm.define :dev do |dev_config|
    config.vm.provider "virtualbox" do |dev|
      dev.customize ["modifyvm", :id, "--name", "dev", "--memory", "4096"]
    end
    dev_config.vm.box = "ubuntu/trusty64"
    dev_config.vm.host_name = "dev" 
    dev_config.vm.network :private_network, ip: "192.168.33.21"
    config.vm.provision :shell, path: "bootstrap.sh"
  end
  config.vm.define :test do |test_config|
    config.vm.provider "virtualbox" do |test|
      test.customize ["modifyvm", :id, "--name", "test", "--memory", "6114"]   
    end 
    test_config.vm.box = "ubuntu/trusty64"
    test_config.vm.host_name = "test" 
    test_config.vm.network :private_network, ip: "192.168.33.22"
  end
end
