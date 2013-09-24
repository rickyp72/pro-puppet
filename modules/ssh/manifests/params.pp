class ssh::params{
  case $operatingsystem {
  /(Red Hat|CentOS|Fedora)/: {
   $ssh_service_name = 'sshd'
   $ssh_package_name = 'openssh-server'
   $ssh_service_conf = '/etc/ssh/sshd_config'
   }
   /(Ubuntu|Debian)/: {
   $ssh_service_name = 'sshd'
   $ssh_package_name = 'openssh-server'
   $ssh_service_conf = '/etc/ssh/sshd_config' 
   }
   Solaris: {
   $ssh_service_name = 'sshd'
   $ssh_package_name = 'openssh'
   $ssh_service_conf = '/etc/ssh/sshd_config'
   }
  
   }
}