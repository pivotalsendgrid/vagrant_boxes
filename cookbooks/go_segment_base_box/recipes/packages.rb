#
# Cookbook Name:: go_segment_base_box
# Recipe:: packages
#
# Copyright (C) 2014 SendGrid
#
# All rights reserved - Do Not Redistribute
#
node['go_segment_base_box']['packages']['install'].each do |obj|
  package obj
end
