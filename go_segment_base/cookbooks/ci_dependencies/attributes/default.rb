#App configuration
default['go_segment']['user'] = 'vagrant'
default['go_segment']['group'] = 'vagrant'

#Golang Configuration
default['go']['version'] = '1.2'
default['go']['platform'] = 'amd64'
default['go']['filename'] = "go#{node['go']['version']}.#{node['os']}-#{node['go']['platform']}.tar.gz"
default['go']['url'] = "http://go.googlecode.com/files/#{node['go']['filename']}"
default['go']['install_dir'] = '/usr/local'
default['go']['gopath'] = '/home/vagrant/gopath'
default['go']['gobin'] = '/home/vagrant/gopath/bin'
default['go']['scm'] = true
default['go']['owner'] = node.default['go_segment']['user']
default['go']['group'] = node.default['go_segment']['group']

#MySql Configuration
default['mysql']['server_root_password'] = ''
default['mysql']['server_debian_password'] = ''
default['db-schema']['development']['repository'] = 'git@github.com:pivotalsendgrid/db-schema.git'
default['db-schema']['development']['revision'] = 'list_segmentation_schema'

#Java Configuration
default['java']['jdk_version'] = '7'
default['java']['install_flavor'] = 'oracle'
default['java']['oracle']['accept_oracle_download_terms'] = true

#ElasticSearch Configuration
default['sendgrid_elasticsearch']['data_dir'] = '/var/lib/elasticsearch'
default['sendgrid_elasticsearch']['work_dir'] = '/var/lib/elasticsearch/work'
default['sendgrid_elasticsearch']['logs_dir'] = '/var/log/elasticsearch'