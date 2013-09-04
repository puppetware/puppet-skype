# == Class: skype::install
#
# This class is used to install Skype on OS X.
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class skype::install {

  $package = $skype::params::package
  $source  = $skype::params::source
  $version = $skype::params::version

  package {"${package}-${version}":
    ensure => installed,
    source => $source,
    provider => appdmg,
  }

}