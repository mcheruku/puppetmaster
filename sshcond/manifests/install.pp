class ssh::install {
      if $osfamily == 'RedHat' {
         $package_name = 'openssh'
           }
      elsif $osfamily == 'Debian' {
            $package_name ='ssh'
           }
      else {
           $package_name = 'ssh'
           }
      package { $package_name:
                ensure => present,          
           } 
}
