# Puppet Module that Installs Jenkins alongwith most common Plugins

## VM Setup :

On base CentOS 7 machine (MMS OS Template) as "sudo" install Masterless Puppet 3.8 with require modules (i.e., apache, firewalld, jenkins).

```bash
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm

yum install puppet

puppet module install puppetlabs-apache --version 1.7.0 

puppet module install rtyler-jenkins --version 1.6.1

puppet module install crayfishx-firewalld --version 2.0.0

git clone https://github.com/asadpiz/jenkins_service.git

puppet apply jaabsnp6
```

**Jenkins is installed along with pre-defined plugins and can be accessed at the VM's IP + port 8080.**

## Source Overview:

The Puppet source is divided into 3 manifests for the sake of simplicity. These manifests make use of classes from corresponding puppet modules.

jenkins.pp uses the puppet-jenkins module's classes to install the package jenkins and runs it's service. Furthermore it also installs predefined plugins & their dependencies.

firewalld.pp uses the crayfishx-firewalld module and simply adds a rule allowing tcp connections to the default port (8080) of jenkins.

apache.pp uses the puppet-apache module and sets up an apache based reverse proxy which would allow redirects to 8081 & 8009.
