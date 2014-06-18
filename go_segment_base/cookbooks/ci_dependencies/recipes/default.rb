#
# Cookbook Name:: ci_dependencies
# Recipe:: default
#
# Copyright (C) 2014 SendGrid
#
# All rights reserved - Do Not Redistribute
#
Chef::Recipe.send(:include, Chef::SendgridApplication::Helpers)

# Install MySQL database
# NOTE Current bug in sendgrid_mysql means development_headers ~must~ come
# before server include.
include_recipe 'sendgrid_mysql::development_headers'
include_recipe 'sendgrid_mysql::server'
include_recipe 'db-schema::development'
include_recipe 'sendgrid_elasticsearch::server'

## Install Go
include_recipe 'golang'

## Install Go Segment App
sendgrid_application_path("#{node.default['go']['gopath']}/src/github.com/sendgrid/go_segment", :development)

