#!/usr/bin/env puppet
# This Puppet manifest adjusts Nginx configurations to handle more concurrent requests

exec { 'increase-nginx-limits':
  command => '/bin/sed -i "s/worker_connections.*/worker_connections 4096;/g" /etc/nginx/nginx.conf && /bin/sed -i "s/# worker_rlimit_nofile.*/worker_rlimit_nofile 8192;/g" /etc/nginx/nginx.conf && systemctl restart nginx',
  path    => ['/bin', '/usr/bin'],
  onlyif  => 'grep -q "worker_connections 1024;" /etc/nginx/nginx.conf',
}
