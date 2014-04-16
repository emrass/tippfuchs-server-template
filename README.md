# Tippfuchs Server Template

Chef server template for provisioning the whole stack for Tippfuchs.de, including

 - database server using Postgresql
 - cache server using Redis.io [TODO]
 - Webserver using Nginx
 - Ruby using Rbenv

## Provision Vagrant using Chef-Solo

Install the required vagrant plugins:
```
vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-omnibus
```

Adjust the settings in the `Vagrantfile`. Now run
```
vagrant up [--provision]
```

In order to (re-)provision a running virtual machine, type `vagrant provision`.

## Provision Vagrant using Chef-Server
```
vagrant up --no-provision
bundle exec knife bootstrap <vm ip> --sudo -x vagrant -P vagrant -N "nodename" -r "recipe[tippfuchs::default]"
```
Replace `<vm ip>` with the actual ip of the VM as set in the `Vagrantfile`, e.g. `192.168.2.10`.

To reprovision, SSH into the virtual machine and run (as root) `chef-client`.




# Requirements

Set up SSH key files:
 1) Copy chef client .pem file into ~/.chef/xyz.pem
 2) Copy the <organization>-validator.pem file into ~/.chef.<organization>-validator.pem

Set up knife-ec2 credentials by creating a file like
  ~/.aws/<organization>_credentials
with content
  AWSAccessKeyId=...
  AWSSecretKey=...

Edit ./.chef/knife.rb and update paths.

# Usage

## Vagrant using Chef-Solo

Spin up vagrant:
```
vagrant up [--provision]
```

## EC2 using Chef Server

Spin up a server on EC2:

```
bundle exec knife ec2 server create \
  --availability-zone eu-west-1a \
  --node-name tippfuchs.sandbox \
  --flavor t1.micro \
  --image ami-808675f7 \
  --identity-file ~/.ssh/aws_tippfuchs.pem \
  --run-list "recipe[tippfuchs::default]" \
  --ssh-user ubuntu \
  --groups web_access
```

Show running servers:
```
bundle exec knife ec2 server list
```
  
Delete running server:
```
bundle exec knife ec2 server delete i-<id>
```

## test-kitchen

```
kitchen converge
```

# Attributes

# Recipes

# Author

Author:: Enrico Mraß (<enrico.mrass@gmail.com>)
