# coding: utf-8

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "puppetlabs/ubuntu-12.04-32-nocm"
  config.vm.provision :shell, :path => "control/build.sh"
end
