#source 'http://api.berkshelf.com'
site :opscode

metadata

# Dependency to make data bag search work with chef solo
cookbook 'chef-solo-search'

# General Dependencies (Common System)

cookbook 'apt',                  '~> 2.3.0'
cookbook 'build-essential',      '~> 2.0.0'
cookbook 'openssl',              '~> 1.1.0'

cookbook 'locale',               '~> 1.0.0',  github: 'hw-cookbooks/locale'
cookbook 'timezone-ii',          '~> 0.2.0'

cookbook 'tippfuchs-fail2ban',   '~> 0.1.0'

cookbook 'git',                  '~> 4.0.0'
cookbook 'vim',                  '~> 1.1.0'
cookbook 'curl',                 '~> 1.1.0'

# Database

cookbook 'tippfuchs-postgresql', '~> 1.0.0', github: 'emrass/tippfuchs-postgresql'

# Webserver

cookbook 'tippfuchs-nginx',      '~> 1.0.0', github: 'emrass/tippfuchs-nginx'

# Rails App Server

cookbook 'imagemagick',          '~> 0.2.0'
cookbook 'tippfuchs-rails',      '~> 0.2.0', github: 'emrass/tippfuchs-rails'
# Issue in Berkshelf < 3.0 -> need to add cookbook here -> TODO: remove when fixed in Berkshelf
cookbook 'rbenv',                '~> 0.7.0', github: 'fnichol/chef-rbenv'