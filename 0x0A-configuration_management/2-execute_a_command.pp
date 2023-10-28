# This code will kill process and works together with killmenow file.
exec { 'killmenow':
  command  => '/usr/bin/pkill killmenow',
  provider => 'shell',
  return   => [0, 1],
}

