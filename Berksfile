source 'http://api.berkshelf.com'

metadata

# Dependency to make data bag search work with chef solo
cookbook 'chef-solo-search'

# Dependency Cookbooks (i.e. defined in sub-/wrapper cookbooks)
# Berkshelf is not able to dissolve this transient dependencies,
# so we need to explicitly declare them.

cookbook 'nginx',                '~> 2.6.2'                                                # defined in tippfuchs-nginx
cookbook 'openssh',              '~> 1.3.0'                                                # defined in tippfuchs-openssh
cookbook 'fail2ban',             '~> 2.1.0', github: 'emrass/fail2ban', branch: 'jail_def' # defined in tippfuchs-fail2ban: remove when merged into main repo
cookbook 'postgresql',           '~> 3.3.0'                                                # defined in tippfuchs-postgresql
cookbook 'rbenv',                '~> 0.7.0', github: 'fnichol/chef-rbenv'                  # defined in tippfuchs-rails

# General Dependencies (Common System)

cookbook 'apt',                  '~> 2.3.0'
cookbook 'build-essential',      '~> 2.0.0'
cookbook 'openssl',              '~> 1.1.0'

cookbook 'locale',               '~> 1.0.1', github: 'hw-cookbooks/locale'
cookbook 'timezone-ii',          '~> 0.2.0'

cookbook 'tippfuchs-fail2ban',   '~> 0.1.0', github: 'emrass/tippfuchs-fail2ban'

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
