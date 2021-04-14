node default {

}

node 'localhost.localdomain' {
  include role::master_server
    file { '/root/README' :
    ensure  => file,
    content => $fqdn,
    owner   => "root",
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
