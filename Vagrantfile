# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

def provision_env(chef)
  chef.cookbooks_path = ['cookbooks', 'site-cookbooks']
  chef.roles_path = ['roles', 'roles/custom']
  chef.data_bags_path = 'data_bags'
  chef.environments_path = 'environments'
end


Vagrant.configure(2) do |config|
 config.vm.box = "hashicorp/precise64"

  config.vm.provider 'virtualbox' do |v|
    v.memory = 1500
    v.cpus = 2
  end

  config.vm.define :gitlabtest do |server|
    server.vm.network  :private_network, ip: '192.168.10.20'
    config.vm.host_name = 'gitlabtest'
    server.vm.provision 'chef_solo' do |chef|
      provision_env(chef)

      #chef.environment = 'testing'
      chef.add_role 'gitlab'
    end
  end
end
