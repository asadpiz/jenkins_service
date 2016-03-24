include firewalld
firewalld_port { 'Open port 8080 for Jenkins':
  ensure   => present,
  zone     => 'work',
  port     => 8080,
  protocol => 'tcp',
}

firewalld_service { 'Allow http traffic':
  ensure  => 'present',
  service => 'http',
  zone    => 'work',
}

