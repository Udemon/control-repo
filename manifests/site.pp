node puppet.local {
  include role::control_server
  file {'/etc/secpwd.txt':
    ensure => file,
    content => lookup('secret'),
  }
}
