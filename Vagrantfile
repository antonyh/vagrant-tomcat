# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
   config.vm.box = "generic/fedora38"
   config.vm.network "forwarded_port", guest: 8080, host: 8080
   config.vm.synced_folder "./webapps", "/var/lib/tomcat/webapps", create:true, owner: "root", group: "root", mount_options: ["dmode=777,fmode=666"]
   config.vm.synced_folder "./conf", "/etc/tomcat", create:true, owner: "root", group: "root", mount_options: ["dmode=777,fmode=666"]
   config.vm.synced_folder "./log", "/var/log/tomcat", create:true, owner: "root", group: "root", mount_options: ["dmode=777,fmode=666"]
   
   config.vm.provision "shell" do |s|
     s.inline = "dnf -y install puppet"
   end
   config.vm.provision "puppet" do |puppet|
     puppet.manifests_path = "Puppet/manifests"
     puppet.module_path = "Puppet/modules"
     puppet.manifest_file  = "site.pp"
   end
end
