#
# Cookbook Name:: ci_dependencies
# Recipe:: default
#
# Copyright (C) 2014 SendGrid
#
# All rights reserved - Do Not Redistribute
#

group 'wheel' do
  action :modify
  append true
  members node.default['go_segment']['user']
end

include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

rbenv_ruby '2.0.0-p451'
rbenv_gem 'bundler' do
  ruby_version '2.0.0-p451'
end