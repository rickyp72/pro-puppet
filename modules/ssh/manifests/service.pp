class ssh::service {
  service { 'ssh::params::ssh_service_name':
  ensure => running,
  hasstatus => true,
  hasrestart => true,
  require => Class['ssh::config'],
 } 
}