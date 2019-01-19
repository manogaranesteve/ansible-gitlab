Vagrant.configure("2") do |config|
	config.vm.provision :shell, path: "scripts/common.sh"
	config.vm.define "ansible" do |ansible|
		ansible.vm.box = "ubuntu/xenial64"
		ansible.vm.hostname= "ansible"
		ansible.vm.provision :shell, path: "scripts/install_ansible_lastest.sh"
		ansible.vm.network "private_network", ip: "10.10.20.3"
		ansible.vm.provision "file", source: "files/J1/", destination: "/home/vagrant/files/"
		ansible.vm.synced_folder "sync/", "/etc/ansible"
		ansible.vm.network "forwarded_port", guest: 80, host: 9083
		ansible.vm.network "forwarded_port", guest: 443, host: 9093
		ansible.vm.provider "virtualbox" do |v|
			v.memory = 5000
			v.cpus = 1
			v.name = "ansible"
		end
	end
    config.vm.define "client1" do |client1|
		client1.vm.box = "ubuntu/xenial64"
		client1.vm.hostname = "client1"
		client1.vm.network "private_network", ip: "10.10.20.4"
		client1.vm.provision :shell, path: "scripts/install_python2.sh"
		client1.vm.network "forwarded_port", guest: 80, host: 9081
		client1.vm.network "forwarded_port", guest: 443, host: 7500
		client1.vm.provider "virtualbox" do |v|
			v.memory = 1024
			v.cpus = 1
			v.name = "client1"
		end
	end
	config.vm.define "client2" do |client2|
		client2.vm.box = "ubuntu/xenial64"
		client2.vm.hostname = "client2"
		client2.vm.network "private_network", ip: "10.10.20.5"
		client2.vm.provision :shell, path: "scripts/install_python2.sh"
		client2.vm.network "forwarded_port", guest: 80, host: 9085
		client2.vm.network "forwarded_port", guest: 443, host: 7085
		client2.vm.provider "virtualbox" do |v|
			v.memory = 1024
			v.cpus = 1
			v.name = "client2"
		end
	end
	config.vm.define "gitlab" do |gitlab|
		gitlab.vm.box = "ubuntu/xenial64"
		gitlab.vm.network "private_network", ip: "10.10.20.6"
		gitlab.vm.hostname = "gitlab"
		gitlab.vm.provision :shell, path: "scripts/install_python2.sh"
		gitlab.vm.network "forwarded_port", guest: 80, host: 9087
		gitlab.vm.network "forwarded_port", guest: 443, host: 9043
		gitlab.vm.provider "virtualbox" do |v|
			v.memory = 2048
			v.cpus = 1
			v.name = "gitlab"
		end
	end
end
