#
# Cookbook Name:: tippfuchs
# Recipe:: default
#
# Copyright (C) 2014 Enrico Mrass
# 
# All rights reserved - Do Not Redistribute
#


include_recipe 'tippfuchs::database'
include_recipe 'tippfuchs::cache'
include_recipe 'tippfuchs::web'
include_recipe 'tippfuchs::rails_app'
