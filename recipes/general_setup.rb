directory "#{node['mabi']['home']}" do
  recursive true
end

user "#{node['mabi']['user']}" do
  comment 'A user for the server'
  home "#{node['mabi']['home']}"
  shell "#{node['mabi']['shell']}"
  password "#{node['mabi']['password']}"
  action :create
end

sudo "#{node['mabi']['user']}" do
  user "#{node['mabi']['user']}"
end
