node default {
  file { '/root/README' :
    ensure  => file,
    content => "This is a readme file",
    owner   => "root",
  }
}

node 'localhost' {
  include role::master_server
}
