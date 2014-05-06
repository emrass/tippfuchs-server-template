source 'http://api.berkshelf.com'

metadata

# Dependency to make data bag search work with chef solo
cookbook 'chef-solo-search'

# Dependency Cookbooks (i.e. defined in sub-/wrapper cookbooks)
# Berkshelf is not able to dissolve this transient dependencies,
# so we need to explicitly declare them.

cookbook 'fail2ban',             '~> 2.1.0', github: 'emrass/fail2ban', branch: 'jail_def' # defined in tippfuchs-fail2ban: remove when merged into main repo
cookbook 'rbenv',                '~> 0.7.0', github: 'fnichol/chef-rbenv'                  # defined in tippfuchs-rails

# General Dependencies (Common System)

cookbook 'locale',               '~> 1.0.1', github: 'hw-cookbooks/locale'
cookbook 'tippfuchs-openssh',    '~> 1.0.3', github: 'emrass/tippfuchs-openssh'
cookbook 'tippfuchs-fail2ban',   '~> 0.1.0', github: 'emrass/tippfuchs-fail2ban'

# Cache

cookbook 'tippfuchs-redis',      '~> 1.0.0', github: 'emrass/tippfuchs-redis'

# Database

cookbook 'tippfuchs-postgresql', '~> 1.0.0', github: 'emrass/tippfuchs-postgresql'

# Webserver

cookbook 'tippfuchs-nginx',      '~> 1.0.0', github: 'emrass/tippfuchs-nginx'

# Rails App Server

cookbook 'tippfuchs-rails',      '~> 0.2.0', github: 'emrass/tippfuchs-rails'
