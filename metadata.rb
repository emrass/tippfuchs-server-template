name             'tippfuchs'
maintainer       'Enrico Mrass'
maintainer_email 'enrico.mrass@gmail.com'
license          'Proprietary - All Rights Reserved'
description      'Installs/Configures tippfuchs'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.9'

recipe 'tippfuchs::_common_system', 'For internal use only - the base server'
recipe 'tippfuchs::database',       'Postgres database server'
recipe 'tippfuchs::webserver',      'Nginx webserver'

supports 'ubuntu', '>= 12.04'

# General Dependencies (Common System)
depends 'apt'
depends 'build-essential'
depends 'openssl'

depends 'locale'
depends 'timezone-ii'

depends 'vim'

# Database

depends 'tippfuchs-postgresql'
depends 'database'