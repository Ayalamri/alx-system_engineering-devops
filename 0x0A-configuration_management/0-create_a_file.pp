# 0-create_a_file.pp
# Description: Puppet manifest to create a file in /tmp

file { '/tmp/school':
  ensure  => present,
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => "I love Puppet\n",
}
