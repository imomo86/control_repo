class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCwjJUlDmoifgzYn78ktsXnQ99On/8niV2xAZ6ReBetZW5BEq33j0kuqRzr2saDHrjuxdoh/ffkK8Vy+MuIREZURY4osYw6kFDH7+ZuImnw2xEVM9ZyCYVk2Ozr7mjy8RIFwcfnLOWWZFJVXpR+sG+M1AV0Zwte1qkNbbAJbkb0SRDwHAx1rFv6TikV1wpCqzVuqoZ9czbIW0EThR0gdFagT8hFEjlC19FcKzGiiYg8nrWiXVEGvQXh/Zr5Q/OsYJLdVMs7IXJtVueaTVkD9uHF4wUG7cBgHT+HP1A713ezUW5YNwixXjTjCxKKxGqhce1Oge/eYd77bt3WXecExIzd',
	}  
}
