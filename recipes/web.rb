include_recipe 'tippfuchs::_common_system'

include_recipe 'tippfuchs-nginx'
include_recipe 'tippfuchs-nginx::fail2ban'

firewall_rule 'http' do
  port     80
  action   :allow
end

firewall_rule 'https' do
  port     443
  action   :allow
end