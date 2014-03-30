# == Class: skype::install
#
# Install Skype for OS X.
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
  $version = $skype::version

  $source = $::osfamily ? {
    'Darwin' => "http://download.skype.com/macosx/Skype_${version}.dmg",
  }

  package {"skype-${version}":
    ensure => installed,
    source => $source,
    provider => appdmg,
  }

}
