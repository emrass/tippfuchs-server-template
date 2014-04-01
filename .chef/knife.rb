# This cookbook is mainly managed through berkshelf using the berks command.
# Berkshelf is configured using the config.json.
# This file is used for chef's knife configuration, which is only used in
# combination with the ec2 plugin to manage AWS EC2 instances.
# The configuration at the beginning (node name, client key etc.) are used
# to bootstrap the EC2 instance from the chef server.
# The credentials given in knife[...] are used to communicate with EC2 (i.e.
# create the instance etc.)

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "enricom"
client_key               "#{ENV['HOME']}/.chef/enricom.pem"
validation_client_name   "tippfuchs-validator"
validation_key           "#{ENV['HOME']}/.chef/tippfuchs-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/tippfuchs"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
#cookbook_path            ["#{current_dir}/../cookbooks"]

knife[:region]                = 'eu-west-1'
knife[:aws_credential_file]   = '/home/enrico/.aws/tippfuchs_credentials'
knife[:aws_ssh_key_id]        = 'tippfuchs' # name of the EC2 key pair as noted in the EC2 management console