class equistation::install inherits equistation {
  package {'sequelpro':
  ensure => present,
  source => 'https://s3-us-west-2.amazonaws.com/equiem-puppet-files/sequel-pro-1.0.2.dmg',
  provider => appdmg,
  }
  package {'sourcetree':
  ensure => present,
  source => 'https://s3-us-west-2.amazonaws.com/equiem-puppet-files/SourceTree_2.0.5.2.dmg',
  provider => appdmg,
  }
}
