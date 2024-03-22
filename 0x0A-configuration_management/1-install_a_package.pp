# 1-install_a_package.pp

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command     => '/usr/bin/pip3 install Flask==2.1.0',
  path        => ['/usr/bin', '/bin'],
  refreshonly => true,
}

package { 'Flask':
  ensure  => '2.1.0',
  require => Exec['install_flask'],
}
