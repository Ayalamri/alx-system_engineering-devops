#!/usr/bin/env puppet
# This Puppet manifest adjusts the file descriptor limits for the holberton user to prevent "Too many open files" errors.

exec { 'change-os-configuration-for-holberton-user':
  command => 'echo "holberton soft nofile 65536" >> /etc/security/limits.conf && echo "holberton hard nofile 65536" >> /etc/security/limits.conf && echo "session required pam_limits.so" >> /etc/pam.d/common-session',
  path    => ['/bin', '/usr/bin'],
  unless  => 'grep -q "holberton" /etc/security/limits.conf',
}
