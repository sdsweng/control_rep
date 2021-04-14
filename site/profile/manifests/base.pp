class profile::base {
  user {  'admin':
    ensure => present,
  }
  include ssh
  include profile::ssh_server
}
