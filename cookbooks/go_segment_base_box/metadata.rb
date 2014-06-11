name             'go_segment_base_box'
maintainer       'SendGrid'
maintainer_email 'operations@sendgrid.com'
license          'All rights reserved'
description      'Installs/Configures go_segment_base_box'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'sendgrid_mysql', '~> 2.0'
depends 'sendgrid_elasticsearch', '~> 0.4'
depends 'golang'
depends 'rbenv'
depends 'java'
