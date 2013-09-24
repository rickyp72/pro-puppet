class ssh::config {
  file { ssh::params::ssh_service_config:
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => '0440',
    source => "puppet:///modules/ssh/sshd_config",
    notify => Class['ssh::service'],
    require => Class['ssh::install'],
  }
}