#
# Cookbook Name:: go_segment_base_box
# Recipe:: go_segment
#
# Copyright (C) 2014 SendGrid
#
# All rights reserved - Do Not Redistribute
#
# Install MySQL database
# NOTE Current bug in sendgrid_mysql means development_headers ~must~ come
# before server include.
include_recipe 'sendgrid_mysql::development_headers'
include_recipe 'sendgrid_mysql::server'
# include_recipe 'db-schema::development'
include_recipe 'sendgrid_elasticsearch::server'

## Install Go
include_recipe 'golang'

#Install Java for ElasticSearch
include_recipe 'java'
include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

rbenv_ruby '2.0.0-p451'
rbenv_gem 'bundler' do
  ruby_version '2.0.0-p451'
end

#Set Ruby version for go_segment
# execute 'set ruby version for go segment' do
#   command 'rbenv local 2.0.0-p451'
#   cwd "#{node.default['go']['gopath']}/src/github.com/sendgrid/go_segment"
#   user node.default['go_segment_base_box']['vagrant']['user']
#   group node.default['go_segment_base_box']['vagrant']['group']
# end

#Install ElasticSearch
# execute 'download ElasticSearch' do
#   command 'wget -q https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.2.1.zip -O elasticsearch-1.2.1.zip'
#   cwd "/home/#{node.default['go_segment']['user']}"
#   user node.default['go_segment']['user']
#   group node.default['go_segment']['group']
# end
#
# execute 'extract ElasticSearch' do
#   command 'unzip -o elasticsearch-1.2.1.zip'
#   cwd "/home/#{node.default['go_segment']['user']}"
# end