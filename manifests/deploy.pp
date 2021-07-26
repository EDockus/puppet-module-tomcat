define tomcat::deploy(
    $deploy_path = $::tomcat::deploy_path,
    $deploy_url,
    $checksum = 'md5',
    $checksum_value

) {

    file{"${deploy_path}/${name}.war":
        source         => "${deploy_url}",
        owner          => $::tomcat::user,
        group          => $::tomcat::group,
        force          => true,
        notify         => Service[$::tomcat::service_name],
        checksum       => "${checksum}",
        checksum_value => "${checksum_value}"
    }
}