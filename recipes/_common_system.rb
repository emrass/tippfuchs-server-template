include_recipe 'apt'             # needs to be first (initial apt-get update)
include_recipe 'build-essential' # second, because we might need to build things

# most urgent server settings
include_recipe 'locale'
include_recipe 'timezone-ii'

# tools
include_recipe 'vim'
package 'htop'
package 'curl'