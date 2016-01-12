class os {

	package {"java-1.8.0-openjdk":
		ensure => installed
	}
	
	package {"zip":
		ensure => installed
	}

	package {"unzip":
		ensure => installed
	}
	
}
