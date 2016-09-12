default['mabi']['user'] = 'mabi'
default['mabi']['group'] = 'mabi'
default['mabi']['home'] = '/home/mabi'
default['mabi']['shell'] = '/bin/bash'
default['mabi']['password'] = '$1$znJ0xjBn$4Cj5XO93tWUWzW4XytC7M.'

#sudoers
default['authorization']['sudo']['users'] << node['mabi']['user']
default['authorization']['sudo']['users'] << 'vagrant'

#mysql
default['mysql']['name'] = 'mabinogi'
default['mysql']['version'] = '5.7'
default['mysql']['port'] = '3306'
default['mysql']['address'] = '127.0.0.1'
default['mysql']['password'] = 'mabinogi'

#game git
default['aura']['git-url'] = 'https://github.com/aura-project/aura.git'
default['aura']['branch'] = 'master'

#selinux settings, required to be off for mysql on rhel distros
default['selinux']['state'] = 'disabled'
