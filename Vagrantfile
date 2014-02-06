# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "centos65-x86_64-20131205"

  config.vm.provider :virtualbox do |vb|
    # vb.gui = true

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.1/centos65-x86_64-20131205.box"

  config.vm.provision :shell, :path => "provisioning/bootstrap.sh"

  config.vm.provision :puppet do |puppet|
          puppet.manifests_path = "provisioning/manifests"
          puppet.module_path    = "provisioning/manifests/modules"
          puppet.manifest_file  = "default.pp"
          puppet.options = [
                  # '--verbose',
                  # '--debug',
          ]
  end

  config.vm.network :forwarded_port, guest: 4445, host: 4444
end
