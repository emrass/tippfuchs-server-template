name             'tippfuchs'
maintainer       'Enrico Mrass'
maintainer_email 'enrico.mrass@gmail.com'
license          'Proprietary - All Rights Reserved'
description      'Installs/Configures tippfuchs'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.4.7'

recipe 'tippfuchs::_common_system', 'For internal use only - the base server'
recipe 'tippfuchs::database',       'Postgres database server'
recipe 'tippfuchs::cache',          'Redis cache server'
recipe 'tippfuchs::web',            'Nginx webserver'
recipe 'tippfuchs::rails_app',      'Rails app server'

supports 'ubuntu', '>= 12.04'

# General Dependencies (Common System)
depends 'apt'
depends 'build-essential'
depends 'openssl'

depends 'locale'
depends 'timezone-ii'

depends 'tippfuchs-fail2ban'

depends 'git'
depends 'vim'
depends 'curl'

# Database

depends 'tippfuchs-postgresql'


# Webserver

depends 'tippfuchs-nginx'


# Rails App Server
depends 'imagemagick'
depends 'tippfuchs-rails'
