# -*- mode: ruby -*-
# vi: set ft=ruby :
ENV['VAGRANT_SERVER_URL'] = 'https://vagrant.elab.pro'

Vagrant.configure("2") do |config|

  config.vm.define "project" do |project|
    project.vm.hostname = "project"
    project.vm.box = "ubuntu/20.04"
    project.vm.provider "virtualbox" do |vb|
      vb.name = "project"
      vb.gui = false
      vb.memory = "2048"
      vb.cpus = 2
  end
  project.vm.synced_folder ".", "/home/vagrant/test-project", 
    owner: "vagrant", group: "vagrant"
  project.vm.network "public_network",
    bridge: "Realtek PCIe GbE Family Controller"
end
end