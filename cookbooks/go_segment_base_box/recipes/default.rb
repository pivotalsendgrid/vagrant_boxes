#
# Cookbook Name:: go_segment_base_box
# Recipe:: default
#
# Copyright (C) 2014 SendGrid
#
# All rights reserved - Do Not Redistribute
#
execute 'aptitude update' do
  only_if { node['platform'] == 'ubuntu' }
end

# %w{
#   packages
#   virtualbox
#   vagrant
#   sshd
#   services
#   go_segment
#   clean
# }.each do |obj|
#   include_recipe "go_segment_base_box::#{obj}"
# end

%w{
  packages
  vagrant
  sshd
  services
  go_segment
  clean
}.each do |obj|
  include_recipe "go_segment_base_box::#{obj}"
end
