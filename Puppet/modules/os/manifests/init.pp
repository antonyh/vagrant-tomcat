class os {

	package {"java-11-openjdk":
		ensure => installed
	}
	
	package {"zip":
		ensure => installed
	}

	package {"unzip":
		ensure => installed
	}
	
}
