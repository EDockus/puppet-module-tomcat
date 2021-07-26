class tomcat::service inherits tomcat {
    service { $::tomcat::service_name :
        ensure  => $::tomcat::params::service_state,
        enable  => true,
        require => Class['tomcat::install']
    }
}