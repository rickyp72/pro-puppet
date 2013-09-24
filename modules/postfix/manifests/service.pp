class postfix::service {
  service {"postfix":
    ensure => running,
    hasstatus => true,
    hastrestart => true,
    enable => true,
    require => Class["postfix::config"],
  }
}