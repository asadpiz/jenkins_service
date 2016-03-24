include apache
## Apache Default Mods to Use
class {'apache::mod::headers':}
class {'apache::mod::ssl':}

## Apache Mods to Install
apache::mod {'proxy_html':}
apache::mod {'proxy_ajp':}
apache::mod {'xml2enc':}


## Apache Virtual Host Configuration
apache::vhost { '_default_':
    docroot               => '/var/www/html',
    servername            => 'test',
#    serveraliases => ['example.test.net',],
    log_level             => 'warn',
    error_log_file        => 'logs/ssl_error_log',


### TODO:  Transfer Log no element!

    port                  => '443',
    ssl                   => true,
    ssl_cipher            => 'EDH+CAMELLIA:EDH+aRSA:EECDH+aRSA+AESGCM:EECDH+aRSA+SHA384:EECDH+aRSA+SHA256:EECDH:+CAMELLIA256:+AES256:+CAMELLIA128:+AES128:+SSLv3:!aNULL:!eNULL:!LOW:!3DES:!MD5:!EXP:!PSK:!DSS:!RC4:!SEED:!ECDSA:CAMELLIA256-SHA:AES256-SHA:CAMELLIA128-SHA:AES128-SHA',

#    ssl_honorcipherorder => 'On', DEFAULT IS ON
    ssl_protocol         => '-ALL -SSLv2 -SSLv3 +TLSv1',
## TODO: Fetch these files
#    ssl_cert        => '/etc/httpd/ssl/server.cert',
#    ssl_key         => '/etc/httpd/ssl/server_nopasswd.key',
#    ssl_chain       => '/etc/httpd/ssl/intermediate.cert',

    directories           => [
    { path             => " ~'\.(cgi|shtml|phtml|php3?)$' ",
      provider    => 'files',
      ssl_options => ['+StdEnvVars',],
    },

    { path             => '/var/www/cgi-bin',
      provider    => 'directory',
      ssl_options => ['+StdEnvVars',],
    },

  ],

##  JENKINS
    request_headers       => ['set X-Forwarded-Proto "https"',],
    proxy_preserve_host   => true,
    allow_encoded_slashes => 'nodecode',

#   ProxyRequests = OFF in manifiests/mod/proxy.pp
    proxy_pass => [
    {'path' => '/', 'url' => 'ajp://localhost:8009/', 'keywords' => ['nocanon'] },
    ],
#    proxy_pass     => [
#    {'path'        => '/'},
#    {'url'         => 'ajp://localhost:8009/'},
#    {'keywords'    => ['nocanon'] },
#    ],
#
#    setenv    => ['nokeepalive', 'ssl-unclean-shutdown', 'downgrade-1.0', 'force-response-1.0'],
    setenvif              => [ '"MSIE [2-5]" \
         nokeepalive ssl-unclean-shutdown \
         downgrade-1.0 force-response-1.0' ],
}

apache::vhost { 'test':
# ! docroot is mandatory in conf file provided there is no docroot
    docroot      => '/var/www/html',
    servername   => 'test.de',
    port         => '443',
    ssl          => true,
    ssl_cipher   => 'EDH+CAMELLIA:EDH+aRSA:EECDH+aRSA+AESGCM:EECDH+aRSA+SHA384:EECDH+aRSA+SHA256:EECDH:+CAMELLIA256:+AES256:+CAMELLIA128:+AES128:+SSLv3:!aNULL:!eNULL:!LOW:!3DES:!MD5:!EXP:!PSK:!DSS:!RC4:!SEED:!ECDSA:CAMELLIA256-SHA:AES256-SHA:CAMELLIA128-SHA:AES128-SHA',
    ssl_protocol => '-ALL -SSLv3 +TLSv1',

## TODO: Fetch these Files

#    ssl_cert        => '/etc/httpd/ssl/server.cert',
#    ssl_key         => '/etc/httpd/ssl/server_nopasswd.key',
#    ssl_chain       => '/etc/httpd/ssl/intermediate.cert',

#    setenv    => ['nokeepalive', 'ssl-unclean-shutdown', 'downgrade-1.0', 'force-response-1.0'],
    setenvif     => [ ' User-Agent ".*MSIE.*" \
                     nokeepalive ssl-unclean-shutdown \
                     downgrade-1.0 force-response-1.0' ],
    rewrites     => [
    {
        rewrite_rule => ['^/(.*)         https://test.de/$1 [L,R]'],
  rewrite_cond       => ['%{HTTPS_HOST}   !^test\.de [NC]']
    }
    ],

}

# Ensure that log directory is available otherwise an error is thrown.
file { '/var/log/httpd/logs/':
    ensure => 'directory',
}

