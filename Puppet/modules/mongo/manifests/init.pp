class mongo {

	package {"mongodb":
		ensure => installed
	}

	service {"mongodb":
		ensure => running,
		enable => true,
		require => Package["mongodb"]
	}	

}
