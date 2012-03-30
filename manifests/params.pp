# Class: passenger::params
#
# This class manages parameters for the Passenger module
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class passenger::params {
  $version='2.2.11'
  
  case $::operatingsystem {
    'ubuntu', 'debian': {
      $gem_path = '/var/lib/gems/1.8/gems/'
      $gem_binary_path = '/var/lib/gems/1.8/bin'
    }
    'centos', 'fedora', 'redhat': {
      $gem_path = '/usr/lib/ruby/gems/1.8/gems'
      $gem_binary_path = '/usr/lib/ruby/gems/1.8/gems/bin'
    }
    'darwin':{
      $gem_path = '/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin'
      $gem_binary_path = '/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin'
    }
  }
  $passenger_gem_path = "$gem_path/passenger-$version"
  $mod_passenger_location = "$passenger_gem_path/ext/apache2/mod_passenger.so"
}
