#
# Cookbook Name:: go_segment_base_box
# Recipe:: virtualbox
#
# Copyright (C) 2014 SendGrid
#
# All rights reserved - Do Not Redistribute
#
node['go_segment_base_box']['virtualbox']['dependencies'].each do |name, version|
  package name do
    version version
  end
end

remote_file node['go_segment_base_box']['virtualbox']['guest_additions']['destination'] do
  source node['go_segment_base_box']['virtualbox']['guest_additions']['source']
  action :create_if_missing
  only_if { node['go_segment_base_box']['virtualbox']['guest_additions']['download'] }
end

mount '/mnt' do
  device node['go_segment_base_box']['virtualbox']['guest_additions']['destination']
  options 'loop'
  only_if { ::File.exists?(node['go_segment_base_box']['virtualbox']['guest_additions']['destination']) }
end

# Note: This always fails because X isn't installed (but that's OK)
execute 'rm /var/log/vboxadd-install.log; echo "yes" | sh /mnt/VBoxLinuxAdditions.run; true' do
  only_if { ::File.exists?('/mnt/VBoxLinuxAdditions.run') }
  notifies :umount, 'mount[/mnt]'
end
