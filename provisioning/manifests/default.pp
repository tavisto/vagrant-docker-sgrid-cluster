node default {
  package {['git', 'docker-io' ]:
    ensure => present,
  }

  service { 'docker':
    ensure   => running,
    provider => 'redhat',
    require  => Package['docker-io'],
  }

}
