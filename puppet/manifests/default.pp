$ruby_version = "1.9.3"

file { '/etc/motd':
	content => "
***********************************

  We Are Tech Women Development

- OS:      Ubuntu 12.04
- Ruby:    ${ruby_version}
- IP:      192.168.33.10

***********************************
\n"
}

class { setup:
	ruby_version => $ruby_version
}
