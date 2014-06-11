#
# Cookbook Name:: go_segment_base_box
# Recipe:: services
#
# Copyright (C) 2014 SendGrid
#
# All rights reserved - Do Not Redistribute
#
node['go_segment_base_box']['services']['disable'].each do |obj|
  service obj do
    action [ :disable, :stop ]
  end
end
