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

cookbook 'vim',                  '~> 1.1.0'

# Database

cookbook 'tippfuchs-postgresql', '~> 1.0.0', github: 'blackbird07/tippfuchs-postgresql'

# Webserver

cookbook 'tippfuchs-nginx',      '~> 1.0.0', github: 'blackbird07/tippfuchs-nginx'

# Rails App Server

cookbook 'nodejs',               '~> 1.3.0'
cookbook 'imagemagick',          '~> 0.2.0'
cookbook 'tippfuchs-rails',      '~> 0.1.0', github: 'blackbird07/tippfuchs-rails'