name             'tippfuchs'
maintainer       'Enrico Mrass'
maintainer_email 'enrico.mrass@gmail.com'
license          'Proprietary - All Rights Reserved'
description      'Installs/Configures tippfuchs'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.5.5'

recipe 'tippfuchs::_common_system', 'For internal use only - the base server'
recipe 'tippfuchs::database',       'Postgres database server'
recipe 'tippfuchs::cache',          'Redis cache server'
recipe 'tippfuchs::web',            'Nginx webserver'
recipe 'tippfuchs::rails_app',      'Rails app server'

supports 'ubuntu', '>= 12.04'

# General Dependencies (Common System)
depends 'apt',                 '~> 2.3.0'
depends 'build-essential',     '~> 2.0.0'
depends 'openssl',             '~> 1.1.0'

depends 'locale'
depends 'timezone-ii',         '~> 0.2.0'

depends 'tippfuchs-openssh'
depends 'tippfuchs-fail2ban'
depends 'firewall',            '~> 0.11.6'

depends 'users',               '~> 1.7.0'
depends 'sudo',                '~> 2.5.2'

depends 'git',                 '~> 4.0.0'
depends 'vim',                 '~> 1.1.0'
depends 'curl',                '~> 1.1.0'

# Cache

depends 'tippfuchs-redis'

# Database

depends 'tippfuchs-postgresql'


# Webserver

depends 'tippfuchs-nginx'


# Rails App Server
depends 'imagemagick',         '~> 0.2.0'
depends 'tippfuchs-rails'
