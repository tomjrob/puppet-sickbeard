class sickbeard::config inherits sickbeard {
  file { "${config_dir}/config.ini":
    content => template('sickbeard/config.ini.erb'),
    owner  => "${user}",
    group  => "${group}",
    notify => Exec['sb_stop'],
    mode    => '0644';
  }
  
  exec { "sb_stop":
    command => 'cp config.ini config.ini.tmp && supervisorctl stop sickbeard & cp config.ini.tmp config.ini',
    cwd => "${config_dir}",
    path => "/bin/:/usr/local/bin/",
    refreshonly => true,
    }
}