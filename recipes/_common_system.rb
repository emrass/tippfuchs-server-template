include_recipe 'apt'             # needs to be first (initial apt-get update)
include_recipe 'build-essential' # second, because we might need to build things
include_recipe 'openssl'         # needed for secure passwords

# most urgent server settings
include_recipe 'locale'
include_recipe 'timezone-ii'

# security
include_recipe 'tippfuchs-openssh' # lock down ssh

include_recipe 'tippfuchs-fail2ban'
fail2ban_jail 'ssh' do
  jail :enabled  => 'true',
       :port     => 'ssh',
       :filter   => 'sshd',
       :logpath  => node['fail2ban']['auth_log'],
       :maxretry => '6'
end

# lock down ports
include_recipe 'firewall'
firewall 'ufw' do
  action   :enable
end
firewall_rule 'ssh' do
  port     node['openssh']['server']['port'].to_i
  action   :allow
end


# users

# Searches data bag "users" for groups attribute "sysadmin" and
# places returned users in Unix group "sysadmin"
include_recipe 'users::sysadmins'
# Make sysamdin a sudo group
include_recipe 'sudo'


# tools
include_recipe 'git'
include_recipe 'vim'
package 'htop'
package 'curl'



# Todo:
#
# - Unattended upgrades (community cookbook currently hardcodes Ubuntu Lucid repo - not yet suitable)
# - Monit


