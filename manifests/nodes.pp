import 'base.pp'
node 'rhel6.propuppet.local' {
 
  include base
  include apache
  apache::vhost {'www.example.com':
    port => 8888,
    docroot => '/var/www/html/www.example.com',
    ssl => false,
    priority => 10,
    serveraliases => 'live.example.com'
  }
}

#class base {
#  #include ssh
#  #include postfix
#  #include mysql
#  package {'git':
#    ensure => present,
#  }
#}