class apache2-index {
	package { apache2:
		ensure => installed,
		allowcdrom => true,
	}

file { “/var/www/html/index.html”:
	content => template(“templates/index.html”),
	}

service { apache2:
	ensure => running,
	}
}
