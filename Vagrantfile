#!/usr/bin/env ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

# To use, run in the directory of this file:
# $ vagrant up
# $ vagrant ssh


Vagrant::VERSION >= "1.1.0" and Vagrant.configure("2") do |config|
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box" # Official Ubuntu 12.04 daily Cloud Image amd64, 341MB
  config.vm.box = "ubuntu1204"
  #config.vm.box_url = "http://goo.gl/8kWkm" #  Ubuntu Server 12.04 amd64 (with Puppet, Chef and VirtualBox 4.2.1), 267MB
  #config.vm.box = "web"
  # See http://www.vagrantbox.es/ for a fuller list of vagrant boxes

  config.vm.define :web1 do |web1_config|

    web1_config.vm.provider :virtualbox do |vb|
      # Tell VirtualBox to use 1GB of memory
      vb.customize ["modifyvm", :id, "--memory", 1024]
    end 

    # To open a port, the syntax is  guest: <vm port>, host: <host port>
    web1_config.vm.network :forwarded_port, guest: 8080, host: 8080
    web1_config.vm.network :forwarded_port, guest: 8000, host: 8000

    # Set the machine hostname
    web1_config.vm.hostname = "vagrantbox"

    # To share a folder, the syntax is <key> (whatever you want it to be), <host path>, <vagrant path>
    #web1_config.vm.share_folder "~/setup", "./setup"
    web1_config.vm.synced_folder "./", "/home/vagrant/code"

    # Run the ubuntu_setup.sh bash script
    web1_config.vm.provision :shell, :path => "ubuntu_setup.sh"

  end 
end
