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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDUSqljlsMHdKk8hRQL5NsjrHpOssOcZIk7Z3YKZV23R8FZOgeJnNhzqyRhwiIUn8+aibjJf5z+GHelLA/ifMFbMc/dLRmvLshzQR1zHSxq1jQh9dpYn0l/YW6Nr+qpffM9yzS76dwrgOIOiZOlkRs78Itk+ngWbdgMF25pO1qA/V6kyE77S7VJseHpiLz94Lj9rAzfgNcKGr1le8SM7e+9+Btn+Owoj8Fy+FhVQ7Qf+0072rScVLPN7ZQinhIwHeVGIJa03mCS/5sHX99eC6EMXwpxX2tGaJoxVG4xNFJi71Lh2jQS9RmeS4M/ZyUbBGSvxRuDS5nfNf86bj3n/a+X',
	}  
}
