# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "ubuntu/trusty64"
	config.vm.provider "virtualbox" do |vb|
		vb.customize ["modifyvm", :id, "--memory", "1024"]
	end
	config.vm.provision "shell", path: "bootstrap/system.sh"
	config.vm.provision "shell", path: "bootstrap/user.sh", privileged: false,
		args: [
			ENV["CANVAS_LMS_ADMIN_EMAIL"],
			ENV["CANVAS_LMS_ADMIN_PASSWORD"],
			ENV["CANVAS_LMS_STATS_COLLECTION"],
			ENV["CANVAS_LMS_ACCOUNT_NAME"]
		]
	config.vm.network "forwarded_port", guest: 3000, host: 3000
	if Vagrant.has_plugin?("vagrant-cachier")
		config.cache.scope = :box
	end
end
