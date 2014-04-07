# -*- mode: ruby -*-
# vi: set ft=ruby :

## Bootstrap machine with runlist already specified:
## knife bootstrap 192.168.2.10 --sudo -x vagrant -P vagrant -N "development1" -r "recipe[tippfuchs::default]"

Vagrant.configure("2") do |config|
  config.vm.hostname = "tippfuchs-berkshelf"
  config.vm.box = "ubuntu1204"
  # config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04-i386_provisionerless.box"
  
  config.omnibus.chef_version = :latest
  config.vm.network :private_network, ip: "192.168.2.10"
  config.vm.boot_timeout = 120
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :locale => {
        :lang   => 'en_US.utf8',
        :lc_all => 'en_US.utf8',
      },
      :tz => 'UTC',
      :postgresql => {
        :password => {
          :postgres => 'md53175bce1d3201d16594cebf9d7eb3f9d' # postgres
        }
      }
    }
    chef.run_list = [
      #"recipe[chef-solo-search::default]",
      "recipe[tippfuchs::default]"
    ]
  end
end
