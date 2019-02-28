class profile::db {
host {'web.puppet.vm':
    ensure => present,
    ip     => '172.18.0.3'
  }
}
