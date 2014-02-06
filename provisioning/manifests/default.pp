node default {
  package {['git', 'docker-io', 'python']:
    ensure => present,
  }

  service { 'docker':
    ensure   => running,
    provider => 'redhat',
    require  => Package['docker-io'],
  }
  exec { 'build_docker_images':
    command   => '/vagrant/docker/build.sh',
    user      => 'root',
    cwd       => '/vagrant/docker',
    logoutput => true,
    timeout   => 0, # This might gake a while
    require   => Service['docker'],
  }

}
