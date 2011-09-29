# class optimize
# It optimises apache, enable GZIP and will install and fine tune PHP Accelerator APC

class optimize::apache	{
		case $operatingsystem  {
			default:	
			{	service { [ "apache" ]:
					name       => "${apache::params::servicename}",
					ensure     => running,
					}
				file { "httpd.conf":
					path    => "${apache::params::configfile}",
					require => Service["apache"],
					exec {"changing-parameters":
					command =>"/etc/puppet/modules/optimize/scripts/centos_change_apache_parameters.sh",
					logoutput => true,
						}
					mode    => "${apache::params::configfile_mode}",
					owner   => "${apache::params::configfile_owner}",
					group  => "${apache::params::configfile_group}",
					}
			}
			
			debian:	
			{	service { [ "apache" ]:
					name       => "${apache::params::servicename}",
					ensure     => running,
					}
				file { "apache2.conf":
					path    => "${apache::params::configfile}",
					require => Service["apache"],
					exec { "changing-parameters":
					command =>"/etc/puppet/modules/optimize/scripts/ubuntu_change_apache_parameters.sh",
					logoutput => true,
						}
					mode    => "${apache::params::configfile_mode}",
					owner   => "${apache::params::configfile_owner}",
					group  => "${apache::params::configfile_group}",
					}
			}
			ubuntu:
			{	service { [ "apache" ]:
					name       => "${apache::params::servicename}",
					ensure     => running,
					}
				file { "apache2.conf":
					path    => "${apache::params::configfile}",
					require => Service["apache"],
					exec { "changing-parameters":
					command =>"/etc/puppet/modules/optimize/scripts/ubuntu_change_apache_parameters.sh",
					logoutput => true,
						}
					mode    => "${apache::params::configfile_mode}",
					owner   => "${apache::params::configfile_owner}",
					group  => "${apache::params::configfile_group}",
					}
			}		
		}						
	}
class optimize::gzip {
		case $operatingsystem  {
			default: {
				exec { "adding-gzipmodule":
				command =>"/etc/puppet/modules/optimize/scripts/centos_adding_gzipmodule.sh $htaccess_loc",
				logoutput => true,
					}
					}
			debian:	{
				exec { "adding-gzipmodule":
				command =>"/etc/puppet/modules/optimize/scripts/ubuntu_adding_gzipmodule.sh $htaccess_loc",
				logoutput => true,
					}
					}	
			ubuntu: {
				exec { "adding-gzipmodule":
				command =>"/etc/puppet/modules/optimize/scripts/ubuntu_adding_gzipmodule.sh $htaccess_loc",
				logoutput => true,
					}
					}
			}
		}
class optimize::apc {
			case $operatingsystem  {
				default: {
					exec { "adding-apc":
					command =>"/etc/puppet/modules/optimize/scripts/centos_apc.sh",
					logoutput => true,
					}
					}
				debian:	{
					exec { "adding-apc":
					command =>"/etc/puppet/modules/optimize/scripts/centos_apc.sh",
					logoutput => true,
					}
					}
				ubuntu:	{
					exec { "adding-apc":
					command =>"/etc/puppet/modules/optimize/scripts/centos_apc.sh",
					logoutput => true,
					}
					}
				}
		}
		
class optimize {
		include optimize::apache, optimize::gzip, optimize::apc
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
