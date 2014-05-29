vagrant-tomcat
===============

Tomcat in a Vagrant VM

What You'll need
================

1. Vagrant
2. VirtualBox
3. Disk space and memory for a VM

Usage
=====

Start the Vagrant machine with 'vagrant up'.

Put a .war file in ./webapps to install into Tomcat 7.

localhost:8080 is mapped by the Vagrantfile to the running Tomcat in the VM.

Notes
=====

I've used the 'chef/fedora-20' box, because that's what I had to hand. Fork and change if you need, it should work with any RHL / Centos / Fedora.

It uses Puppet to install the tools.

Port mapping is done in the Vagrantfile.

Anything in the ./webapps, ./log, and ./conf folders isn't committed to Git, so the VM should stay small and can be readily destroyed at will (although I've not yet tested this... it's quite likely the conf folder will get overwritten)


