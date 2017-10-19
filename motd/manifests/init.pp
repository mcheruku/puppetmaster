class motd {
file {'/etc/motd':
      # source => 'puppet:///modules/motd/motd.';
      content => template ('motd/motd.erb')
     }  
    
}           

