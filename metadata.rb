name 'aura-cookbook'
maintainer 'Jose M. Tobar'
maintainer_email 'ilovemysillybanana@gmail.com'
license 'Apache 2.0'
description 'Installs/Configures Aura Mabinogi Server as well as the necessary components.'
long_description 'Installs/Configures Aura Mabinogi Server as well as the necessary components.'
version '0.1.0'

depends 'yum',   '~> 4.0.0'
depends 'yum-epel', '~> 1.0.0'
depends 'selinux', '~> 0.9.0'
depends 'sudo', '~> 3.0.0'
depends 'mysql', '= 7.0.0'
depends 'git', '~> 5.0.0'
