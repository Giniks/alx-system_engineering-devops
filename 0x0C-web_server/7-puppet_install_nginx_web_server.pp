# The puppet manifest to configure an Nginx server
class nginx_server {
  # To install Nginx package
  package { 'nginx':
    ensure => installed,
  }

  # To ensure Nginx service is running and enabled
  service { 'nginx':
    ensure  => running,
    enable  => true,
    require => Package['nginx'],
  }

  # To define the default Nginx server block
  file { '/etc/nginx/sites-available/default':
    ensure  => present,
    content => "
      server {
        listen      80 default_server;
        listen      [::]:80 default_server;
        root        /var/www/html;
        index       index.html index.htm;

        location / {
          return 200 'Hello World!';
        }

        location /redirect_me {
          return 301 http://cuberule.com/;
        }
      }
    ",
    notify => Service['nginx'],
  }

  # Define a new server block for the 301 redirect
  nginx::resource::server { 'redirect_server':
    listen_port    => 80,
    server_name    => 'lizcode.tech',
    location       => {
      '/' => {
        ensure => 'absent', # Remove the root location
      },
      '/redirect_me' => {
        ensure  => 'present', # Define the /redirect_me location
        content => 'return 301 http://cuberule.com;', # Perform the 301 redirect
      },
    },
  }
}

