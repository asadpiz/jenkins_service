#TODO: Fix Jenkins Versions
include jenkins

#Fix Jenkins Version
#class {'jenkins::params': 
#    version => '1.643'
#}
## Jenkins Plugin Dependencies to Install

jenkins::plugin {'analysis-core':
    version => '1.75',}
jenkins::plugin {'ant':
    version => '1.2',}
jenkins::plugin {'credentials':
    version => '1.24',}
jenkins::plugin {'conditional-buildstep':
    version => '1.3.3',}
jenkins::plugin {'config-file-provider':
    version => '2.10.0',}
jenkins::plugin {'dashboard-view':
    version => '2.9.7',}
jenkins::plugin {'email-ext':
    version => '2.40.5',}
jenkins::plugin {'envinject':
    version => '1.92.1',}
jenkins::plugin {'flexible-publish':
    version => '0.15.2',}
jenkins::plugin {'greenballs':
    version => '1.15',}
jenkins::plugin {'git-client':
    version => '1.19.0',}
jenkins::plugin {'git-parameter':
    version => '0.4.0',}
jenkins::plugin {'gradle':
    version => '1.24',}
jenkins::plugin {'groovy':
    version => '1.29',}
jenkins::plugin {'ivy':
    version => '1.26',}
jenkins::plugin {'jenkins-multijob-plugin':
    version => '1.20',}
jenkins::plugin {'jira':
    version => '2.1',}
jenkins::plugin {'jquery':
    version => '1.11.2-0',}
jenkins::plugin {'junit':
    version => '1.10',}
# ON DEPRECATION LIST
jenkins::plugin {'locks-and-latches':
    version => '0.6',}
jenkins::plugin {'mailer':
    version => '1.16',}
jenkins::plugin {'matrix-project':
    version => '1.6',}
jenkins::plugin {'maven-plugin':
    version => '2.12.1',}
#OPTIONAL
jenkins::plugin {'nant':
    version => '1.4.3',}
jenkins::plugin {'parameterized-trigger':
    version => '2.29',}
jenkins::plugin {'perforce':
    version => '1.3.35',}
jenkins::plugin {'plain-credentials':
    version => '1.1',}
jenkins::plugin {'postbuild-task':
    version => '1.8',}
jenkins::plugin {'promoted-builds':
    version => '2.24',}
jenkins::plugin {'run-condition':
    version => '1.0',}
jenkins::plugin {'scm-api':
    version => '1.0',}
jenkins::plugin {'script-security':
    version => '1.15',}
jenkins::plugin {'ssh-credentials':
    version => '1.11',}
jenkins::plugin {'ssh-agent':
    version => '1.8',}
jenkins::plugin {'subversion':
    version => '2.5.4',}
jenkins::plugin {'token-macro':
    version => '1.11',}
jenkins::plugin {'workflow-step-api':
    version => '1.11',}

## Jenkins Plugins to Install
jenkins::plugin {'git':
    version => '2.4.0',}
jenkins::plugin {'stashNotifier':
    version => '1.9.0',}
jenkins::plugin {'active-directory':
    version => '1.41',}
jenkins::plugin {'artifactory':
    version => '2.4.4',}
jenkins::plugin {'build-name-setter':
    version => '1.5.1',}
jenkins::plugin {'checkstyle':
    version => '3.44',}
jenkins::plugin {'extended-choice-parameter':
    version => '0.56',}
jenkins::plugin {'jobcopy-builder':
    version => '1.3.0',}
jenkins::plugin {'next-build-number':
    version => '1.1',}
jenkins::plugin {'nodelabelparameter':
    version => '1.7.1',}
jenkins::plugin {'rebuild':
    version => '1.25',}
jenkins::plugin {'sectioned-view':
    version => '1.20',}
jenkins::plugin {'timestamper':
    version => '1.7.2',}
jenkins::plugin {'validating-string-parameter':
    version => '2.3',}
jenkins::plugin {'versionnumber':
    version => '1.6',}
jenkins::plugin {'ws-cleanup':
    version => '0.28',}

