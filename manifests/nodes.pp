node 'rhel6.propuppet.local' {
  include base

}

class base {
  #include ssh
  #include postfix
  #include mysql
  package {'git':
    ensure => present,
  }
}