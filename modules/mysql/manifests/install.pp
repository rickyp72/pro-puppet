class mysql::install {
  package { ['mysql', 'mysql-libs' ]:
    ensure => present,
    require => User["mysql"],
  }
  
  user { "mysql":
    ensure => present,
    comment => "MySQL user",
    gid => "mysql",
    shell => "/bin/false",
    require => Group["mysql"],
  }
  
  group {"mysql":
    ensure => present,
  }
}