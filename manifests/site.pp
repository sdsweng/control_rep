node default {

}

node 'localhost.localdomain' {
  include role::master_server
    file { '/root/README' :
    ensure  => file,
    content => "Welcome to ${fqdn} \n",
    owner   => "root",
  }
}

node 'minetest.puppet.vm' {
  include role::minecraft_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
