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

directory "#{node['mabi']['home']}/aura-project" do
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

# Configure the MySQL client.mysql -h 127.0.0.1 -u root -pmabinogi < /home/mabi/aura/sql/main.sql
mysql_client "#{node['mysql']['name']}" do
  action :create
end

mysql_service "#{node['mysql']['name']}" do
  instance "#{node['mysql']['name']}"
  version "#{node['mysql']['version']}"
  port "#{node['mysql']['port']}"#{node['mabi']['home']}
  action [:create, :start]
end

bash 'compile and build db' do
  code <<-EOH
  xbuild #{node['mabi']['home']}/Aura.sln
  mysql -h #{node['mysql']['address']} -u root -p#{node['mysql']['password']} < #{node['mabi']['home']}/aura/sql/main.sql
  EOH
end

template "#{node['mabi']['home']}/aura/user/conf/database.conf" do
  source 'database.conf.erb'
  owner "#{node['mabi']['user']}"
  group "#{node['mabi']['group']}"
end
