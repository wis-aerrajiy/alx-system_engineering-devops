#Sky is the limit, let's bring that limit higher

exec { 'set limit':
  command => 'sed -i \'s/^ULIMIT=.*/ULIMIT="-n 4096"/g\' /etc/default/nginx',
  path    => '/bin/',
}

-> exec { 'restart':
  command => 'nginx restart',
  path    => '/etc/init.d/',
}