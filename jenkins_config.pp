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
  content => template( '/root/jaabsnp6/templates/credentials.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/jenkins.model.JenkinsLocationConfiguration.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/jenkins.model.JenkinsLocationConfiguration.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/com.sonyericsson.rebuild.RebuildDescriptor.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/com.sonyericsson.rebuild.RebuildDescriptor.erb'), # TODO: Modify with Master-Slave architecture
}
file { '/var/lib/com.tikal.jenkins.plugins.multijob.PhaseJobsConfig.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/com.tikal.jenkins.plugins.multijob.PhaseJobsConfig.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/config.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/config.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/envinject-plugin-configuration.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/envinject-plugin-configuration.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/envInject.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/envInject.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/hudson.ivy.IvyBuildTrigger.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.ivy.IvyBuildTrigger.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/hudson.ivy.IvyModuleSet.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.ivy.IvyModuleSet.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/hudson.maven.MavenModuleSet.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.maven.MavenModuleSet.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/hudson.plugins.analysis.core.GlobalSettings.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.plugins.analysis.core.GlobalSettings.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/hudson.plugins.emailext.ExtendedEmailPublisher.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.plugins.emailext.ExtendedEmailPublisher.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/hudson.plugins.git.GitSCM.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.plugins.git.GitSCM.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/hudson.plugins.git.GitTool.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.plugins.git.GitTool.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/hudson.plugins.gradle.Gradle.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.plugins.gradle.Gradle.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/hudson.plugins.groovy.Groovy.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.plugins.groovy.Groovy.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/hudson.plugins.jira.JiraProjectProperty.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.plugins.jira.JiraProjectProperty.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/hudson.plugins.locksandlatches.LockWrapper.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.plugins.locksandlatches.LockWrapper.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/hudson.plugins.nant.NantBuilder.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.plugins.nant.NantBuilder.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/hudson.plugins.perforce.PerforceSCM.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.plugins.perforce.PerforceSCM.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/hudson.plugins.perforce.PerforceToolInstallation.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.plugins.perforce.PerforceToolInstallation.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/hudson.plugins.timestamper.TimestamperConfig.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.plugins.timestamper.TimestamperConfig.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/hudson.scm.CVSSCM.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.scm.CVSSCM.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/hudson.scm.SubversionSCM.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.scm.SubversionSCM.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/hudson.tasks.Ant.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.tasks.Ant.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/hudson.tasks.Mailer.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.tasks.Mailer.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/hudson.tasks.Maven.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.tasks.Maven.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/hudson.tasks.Shell.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.tasks.Shell.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/hudson.triggers.SCMTrigger.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/hudson.triggers.SCMTrigger.erb'), # TODO: Modify with Master-Slave architecture
}


file { '/var/lib/jenkins/jenkins.model.ArtifactManagerConfiguration.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/jenkins.model.ArtifactManagerConfiguration.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/jenkins.mvn.GlobalMavenConfig.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/jenkins.mvn.GlobalMavenConfig.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/nodeMonitors.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/nodeMonitors.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/org.jenkinsci.main.modules.sshd.SSHD.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/org.jenkinsci.main.modules.sshd.SSHD.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/org.jenkinsci.plugins.conditionalbuildstep.singlestep.SingleConditionalBuilder.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/org.jenkinsci.plugins.conditionalbuildstep.singlestep.SingleConditionalBuilder.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/org.jenkins_ci.plugins.flexible_publish.FlexiblePublisher.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/org.jenkins_ci.plugins.flexible_publish.FlexiblePublisher.erb'), # TODO: Modify with Master-Slave architecture
}




file { '/var/lib/jenkins/org.jenkinsci.plugins.gitclient.JGitTool.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/org.jenkinsci.plugins.gitclient.JGitTool.erb'), # TODO: Modify with Master-Slave architecture
}



file { '/var/lib/jenkins/org.jenkinsci.plugins.stashNotifier.StashNotifier.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/org.jenkinsci.plugins.stashNotifier.StashNotifier.erb'), # TODO: Modify with Master-Slave architecture
}



file { '/var/lib/jenkins/org.jfrog.hudson.ArtifactoryBuilder.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/org.jfrog.hudson.ArtifactoryBuilder.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/proxy.xml':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/proxy.erb'), # TODO: Modify with Master-Slave architecture
}

file { '/var/lib/jenkins/queue.xml.bak':
  ensure => file,
  content => template( '/root/jaabsnp6/templates/queue.erb'), # TODO: Modify with Master-Slave architecture
}

#TODO: Also copy secretes
