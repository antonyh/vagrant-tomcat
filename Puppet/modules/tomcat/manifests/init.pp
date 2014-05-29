class tomcat {

	package {"tomcat":
		ensure => installed
	}
	
	package {"tomcat-native":
		ensure => installed
	}
	
	service {"tomcat":
		ensure => running,
		enable => true,
		require => Package["tomcat", "tomcat-native"]
	}	

}
