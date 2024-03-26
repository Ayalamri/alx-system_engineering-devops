# 1-install_a_package.pp
# Description: Puppet manifest to install Flask from pip3

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
