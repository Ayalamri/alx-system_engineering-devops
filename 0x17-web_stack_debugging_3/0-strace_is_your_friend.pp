# This Puppet manifest fixes the Apache 500 error by ensuring correct permissions and restoring a missing configuration file

# Ensure the WordPress configuration file exists
file { '/var/www/html/wp-config.php':
  ensure  => file,
  source  => 'puppet:///modules/wordpress/wp-config.php',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
}
