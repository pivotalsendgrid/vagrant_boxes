default['go_segment_base_box']['virtualbox']['guest_additions']['download'] = false
default['go_segment_base_box']['virtualbox']['guest_additions']['version_file'] = '/root/.vbox_version'
default['go_segment_base_box']['virtualbox']['guest_additions']['version'] = IO.read(node['go_segment_base_box']['virtualbox']['guest_additions']['version_file']).strip rescue nil
default['go_segment_base_box']['virtualbox']['guest_additions']['source'] = "http://download.virtualbox.org/virtualbox/#{node['go_segment_base_box']['virtualbox']['guest_additions']['version']}/VBoxGuestAdditions_#{node['go_segment_base_box']['virtualbox']['guest_additions']['version']}.iso"
default['go_segment_base_box']['virtualbox']['guest_additions']['destination'] = '/root/VBoxGuestAdditions.iso'
default['go_segment_base_box']['virtualbox']['dependencies'] = case platform
when 'centos'
  {
    'gcc' => nil,
    'kernel-devel' => node['kernel']['release'].split('.')[0...-1].join('.') # Remove architecture from the version
  }
when 'ubuntu'
  {
    'build-essential' => nil,
    "linux-headers-#{node['kernel']['release']}" => nil
  }
else
 {}
end

default['go_segment_base_box']['vagrant']['user'] = 'vagrant'
default['go_segment_base_box']['vagrant']['group'] = 'vagrant'
default['go_segment_base_box']['vagrant']['home'] = '/home/vagrant'
default['go_segment_base_box']['vagrant']['password'] = '$1$HJpcvPyh$B48V.Ew2qABDudFilqTg/1' # openssl passwd -1 'vagrant'

default['go_segment_base_box']['packages']['install'] = case platform
when 'centos'
  %w{ nfs-utils }
when 'ubuntu'
  %w{ nfs-client }
else
  []
end

default['go_segment_base_box']['services']['disable'] = [
  'postfix' # Conflicts with ismtpd
]

default['go_segment_base_box']['clean']['enable'] = true
