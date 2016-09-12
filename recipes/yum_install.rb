yum_package 'yum-utils' do
  action :install
end

yum_repository 'mono' do
  description 'Mono Project GPG Key'
  baseurl 'http://download.mono-project.com/repo/centos/'
  gpgkey 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF'
  action :create
end

yum_package 'mono-complete' do
  action :install
end
