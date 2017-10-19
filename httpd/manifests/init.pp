#class httpd inherits motd {
class httpd
{
package {'httpd':
        ensure => present,
        before => File['/var/www/html/index.html'],
        }

file    {'/var/www/html/index.html':
        source => 'puppet:///modules/httpd/index.html',
        #content => template('/httpd/index.html.erb'),
        notify => Service['httpd'],
        }

service {'httpd':
        ensure => running,
        require => Package['httpd'],
        subscribe => File['/var/www/html/index.html'],
        }
        #$player1 = $player1 
        #notify {" fav cricketer is ${player1}" }

}

