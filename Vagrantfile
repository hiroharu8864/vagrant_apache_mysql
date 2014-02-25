# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "base64"

  config.vm.define "web" do |web|
    web.vm.network :hostonly, "192.168.50.111"
    web.vm.host_name = "web"
    web.vm.forward_port 80, 9090
    web.vm.provision "shell", path: "web_provision.sh"
  end

  config.vm.define "db" do |db|
    db.vm.network :hostonly, "192.168.50.112"
    db.vm.host_name = "db"
    db.vm.provision "shell", path: "db_provision.sh"
  end
end
