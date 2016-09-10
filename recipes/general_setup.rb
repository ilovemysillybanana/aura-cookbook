group "#{node['mabi']['group']}" do
  gid '1234'
  action :create
end

user "#{node['mabi']['user']}" do
  comment 'A user for the server'
  home "#{node['mabi']['home']}"
  group '1234'
  shell "#{node['mabi']['shell']}"
  password "#{node['mabi']['password']}"
  action :create
end

directory "#{node['mabi']['home']}" do
  owner "#{node['mabi']['user']}"
  group "#{node['mabi']['group']}"
  recursive true
end

template "#{node['mabi']['home']}/.bashrc" do
  source 'bashrc.erb'
  owner "#{node['mabi']['user']}"
  group "#{node['mabi']['group']}"
end

sudo "#{node['mabi']['user']}" do
  user "#{node['mabi']['user']}"
end
