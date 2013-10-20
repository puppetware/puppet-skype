# == Class: skype::params
#
# Define default parameters.
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class skype::params {

  $package = 'skype'
  $version = '6.9.59.517'

  $source = $::kernel ? {
    'Darwin' => "http://download.skype.com/macosx/Skype_${version}.dmg",
    default => fail("Unsupported Kernel: ${::kernel} Operating System: ${::operatingsystem}")
  }

}