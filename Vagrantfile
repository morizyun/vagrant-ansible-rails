# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'CentOS_6.5_x86_64'
  config.vm.box_url = 'http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-x86_64-v20140110.box'

  config.vm.network :private_network, ip: '192.168.33.10'

  # ローカルとフォルダ同期
  config.vm.synced_folder './app', '/var/rails', mount_options: ['dmode=777', 'fmode=666']

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', 1024]
  end
end
