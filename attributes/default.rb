default['mabi']['user'] = 'mabi'
default['mabi']['home'] = '/home/mabi'
default['mabi']['shell'] = '/bin/bash'

default['authorization']['sudo']['users'] << node['mabi']['user']
default['authorization']['sudo']['users'] << 'vagrant'
