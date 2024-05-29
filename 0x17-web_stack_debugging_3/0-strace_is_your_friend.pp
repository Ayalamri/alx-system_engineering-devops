# Puppet manifest to fix Apache 500 error
#
# Attach strace to the Apache process
# Run curl to trigger the error
# Analyze strace output to identify the cause
# Implement the fix manually
# Automate the fix with Puppet

# Define Puppet resources to fix the issue
exec { 'fix-wordpress':
  command     => '/bin/bash -c "chmod 755 /var/www/html/wp-content"',
  refreshonly => true,
}

# Notify Apache service restart after fixing permissions
service { 'apache2':
  ensure    => running,
  subscribe => Exec['fix-wordpress'],
}
