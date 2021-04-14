class profile::ssh_server {
	#package {'openssh-server':
	#	ensure => present,
	#}
	#service { 'sshd':
	#	ensure => 'running',
	#	enable => 'true',
	#}
	ssh_authorized_key { 'root@localhost.localdomain':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDgMkp9G7ASrLvNBXbjBPAPB1MXiF/+H6h/JIJ1hnjOSjoAjpzv/PUb4YT5BF0R1NQCTwCmpIisThOQZDRsa2+lp/pqLZOyXeYoy5Skhzy6cakvxDs1b5cECsOH2Vw+XwxCqH/4XXYQCm5Z2uTpJ16AMCbGb7TG1/6AJWwKdWUbnTKKktf7s+L2m1WIX+Ah3GPNYMucMiQozOHGnCpmUwccZ6T9TS6X6I0HS7p8ajii5L18sOu9YH5JfnOoxWL0Sig9kv7xV6xs21wNUB+9H/8BKZ5FrwbDftZwez91+o7v6ftaQ7Lygi9rema5l8lBY2yBGEzol6NMXTzsofjGDcX1',
	}  
}
