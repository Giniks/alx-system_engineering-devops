# Puppet manifest to install Flask from pip3

# Ensure pip is installed
package { 'python3-pip':
  ensure => 'installed',
}

# Install Flask version 2.1.0 using pip3
exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => '/usr/bin',
  creates => '/usr/local/lib/python3.8/dist-packages/flask',
  require => Package['python3-pip'],
}

