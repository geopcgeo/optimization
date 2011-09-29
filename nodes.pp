# The following are the settings variables required for the operations. Assign appropriate values

#Replace the location of your .htaccess file in $htaccess_loc

$htaccess_loc="/var/www/html/edge.devl.medigy.com/medigy-drupal/public_site/.htaccess"

#necessary defaults
Exec {
   path => ["/bin", "/sbin", "/usr/bin", "/usr/sbin"],
}

# If you want to run this manifest for a specified system, put the system name instead of default. Default means it will run all the systems.
# If you don't want to install any of this modules , Please do delete that line and execute this manifest.

node default {

        include optimize
        }
