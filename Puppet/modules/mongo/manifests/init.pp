class mongo {

	package {"mongodb":
		ensure => installed
	}
	
	package {"mongodb-server":
		ensure => installed
	}

	service {"mongod":
		ensure => running,
		enable => true,
		require => Package["mongodb-server"]
	}	

}
