# kill process killmenow

exec { 'killmenow':
  command => 'pkill killmenow',
  provider => 'shell',
  onlyif  => 'pgrep killmenow',
}

