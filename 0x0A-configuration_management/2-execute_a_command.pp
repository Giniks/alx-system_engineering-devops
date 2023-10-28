# Execute a command to kill a process named 'killmenow' using Puppet.

exec { 'kill_process':
  command => '/usr/bin/pkill -f killmenow',
}

