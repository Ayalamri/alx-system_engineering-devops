# This Puppet manifest fixes the Apache 500 error by enabling the PHP5 module and ensuring Apache is running

# Ensure PHP5 is installed
package { 'php5':
  ensure => installed,
}

# Enable the PHP5 module in Apache
exec { 'enable_php_module':
  command => '/usr/sbin/a2enmod php5',
  unless  => '/usr/sbin/apache2ctl -M | grep php5_module',
  require => Package['php5'],
}
