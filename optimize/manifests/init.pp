# class optimize
# It optimises apache, enable GZIP and will install and fine tune PHP Accelerator APC

class optimize::apache	{
		case $operatingsystem  {
			default:	
			{	service { [ "httpd" ]:
					ensure     => running,
					}
				exec { "changing-parameters":
					command =>"/etc/puppet/modules/optimize/scripts/centos_change_apache_parameters.sh",
					logoutput => true,
					}
				}
			debian:	
			{	service { [ "apache2" ]:
					ensure     => running,
					}
				exec { "changing-parameters":
					command =>"/etc/puppet/modules/optimize/scripts/ubuntu_change_apache_parameters.sh",
					logoutput => true,
					}
				}
			ubuntu:
			{	service { [ "apache2" ]:
					ensure     => running,
					}
				exec { "changing-parameters":
					command =>"/etc/puppet/modules/optimize/scripts/ubuntu_change_apache_parameters.sh",
					logoutput => true,
					}
				}		
		}						
	}
class optimize::gzip {
		case $operatingsystem  {
			default: {
				exec { "adding-gzipmodule":
				command =>"/etc/puppet/modules/optimize/scripts/centos_adding_gzipmodule.sh",
				logoutput => true,
					}
					}
			debian:	{
				exec { "adding-gzipmodule":
				command =>"/etc/puppet/modules/optimize/scripts/ubuntu_adding_gzipmodule.sh",
				logoutput => true,
					}
					}	
			ubuntu: {
				exec { "adding-gzipmodule":
				command =>"/etc/puppet/modules/optimize/scripts/ubuntu_adding_gzipmodule.sh",
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
