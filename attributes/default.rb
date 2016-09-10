default['mabi']['user'] = 'mabi'
default['mabi']['group'] = 'mabi'
default['mabi']['home'] = '/home/mabi'
default['mabi']['shell'] = '/bin/bash'
default['mabi']['password'] = '$1$znJ0xjBn$4Cj5XO93tWUWzW4XytC7M.'

default['authorization']['sudo']['users'] << node['mabi']['user']
default['authorization']['sudo']['users'] << 'vagrant'
