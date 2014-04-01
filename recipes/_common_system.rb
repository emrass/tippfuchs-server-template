include_recipe 'apt'             # needs to be first (initial apt-get update)
include_recipe 'build-essential' # second, because we might need to build things

# most urgent server settings
include_recipe 'locale'
include_recipe 'timezone-ii'

# tools
include_recipe 'openssl'
include_recipe 'vim'
package 'htop'
package 'curl'


# Prepared:
#
#include_recipe 'firewall'
#firewall 'ufw' do
#  action   :enable
#end
#firewall_rule 'ssh' do
#  port     22
#  action   :allow
#end
#
#include_recipe 'fail2ban'
#include_recipe 'tippfuchs-openssh'


# Todo:
#
# - Unattended upgrades (community cookbook currently hardcodes Ubuntu Lucid repo - not yet suitable)
# - Admin user
# - Monit


