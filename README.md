# tippfuchs cookbook

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

Spin up vagrant:
  vagrant up

Spin up a server on EC2:

  bundle exec knife ec2 server create \
    --availability-zone eu-west-1a \
    --node-name tippfuchs.sandbox \
    --flavor t1.micro \
    --image ami-808675f7 \
    --identity-file ~/.ssh/aws_tippfuchs.pem \
    --run-list "recipe[tippfuchs::default]" \
    --ssh-user ubuntu \
    --groups web_access

Show running servers:
  bundle exec knife ec2 server list
  
Delete running server:
  bundle exec knife ec2 server delete i-<id>

# Attributes

# Recipes

# Author

Author:: Enrico Mraß (<enrico.mrass@gmail.com>)
