This contains generalized puppet script for Apache Optimization, enabling of GZIP, installation and fine tuning of PHP Accelerator APC.
***************************************************************************************************************************************
This Puppet Script for tuning Alim Server

Server Configuration Management Setup
=====================================

For rpm package: (redhat,centos, etc)
-------------------------------------

#Installing git and puppet

yum install git-core puppet

#Configuring ssh public key.

cd $HOME
ssh-keygen -t rsa 
vi .ssh/id_rsa.pub

Paste the ssh key into the GitHub account you'll be using

git clone git@github.com:netspective/operations.git

ln -s /$HOME/operations/configuration/server/puppet/modules/optimize /etc/puppet/modules
mkdir /etc/puppet/manifests
cp /etc/puppet/modules/nodes.pp /etc/puppet/manifests/
sudo chmod 755 /etc/puppet/modules/optimize/scripts/*
puppet -v /etc/puppet/manifests/nodes.pp



For debian package: (ubuntu, debian etc)
----------------------------------------


# Installing git and puppet

sudo apt-get install -y git-core puppet


# Configuring ssh public key.

cd $HOME
sudo ssh-keygen -t rsa 
sudo vi .ssh/id_rsa.pub

# Paste the ssh key into the GitHub account you'll be using

sudo git clone git@github.com:netspective/operations.git

sudo ln -s /$HOME/operations/configuration/server/puppet/modules/optimize /etc/puppet/modules
sudo cp /etc/puppet/modules/nodes.pp /etc/puppet/manifests/
sudo chmod 755 /etc/puppet/modules/optimize/scripts/*
sudo puppet -v /etc/puppet/manifests/nodes.pp
