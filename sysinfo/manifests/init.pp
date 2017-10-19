class sysinfo {
$player1="mk"
     file {'/etc/sysinfo':
    # ensure => 'puppet:///modules/sysinfo/sysinfo',
    # source => 'puppet:///modules/sysinfo/sysinfo'
       ensure => file,    
           content => $player1,
}
}
