$as_vagrant   = 'sudo -u vagrant -H bash -l -c'
$home         = '/home/vagrant'

Exec {
  path => ['/usr/sbin', '/usr/bin', '/sbin', '/bin']
}

file { '/etc/motd':
	content => "Let's install the development environment! \n"
}

exec { 'apt-get update':
  command => 'apt-get update',
  timeout => 60,
  tries   => 3
}

class { 'git': }

# --- Packages -----------------------------------------------------------------

$sysPackages = [ 'build-essential', 'git', 'curl', 'vim']
package { $sysPackages:
  ensure => "installed",
  require => Exec['apt-get update'],
}
