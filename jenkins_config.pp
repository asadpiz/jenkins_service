##### Adding Jenkins Configuration
$jenkinspath = "/var/lib/jenkins/"
$id_unencrypted = "6e5d60f0-1a1f-40e1-a424-bfc777b419c0"
$description_unencrypted = "FNU für die Jenkins Schulung"
$username_unencrypted = "fnu"
$password_unencrypted = "test"



$id_encrypted = "6c61112d-907f-432d-b318-a4675e026d3e"
$description_encrypted = "FNU für die Jenkins Schulung - encrypted"
$username_encrypted = "fnu2"
$password_encrypted = "test"

$jenkins_url= "localhost:8080"


file { '/var/lib/jenkins/credentials.xml':
  ensure => file,
 # replace => yes,
 # require => Service['jenkins'],
  content => template( '/home/ec2-user/jenkins_service/templates/credentials.erb'), # TODO: Modify with Master-Slave architecture
}

