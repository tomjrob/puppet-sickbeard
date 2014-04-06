class sickbeard::config inherits sickbeard {
  file { "${config_dir}/config.ini":
    content => template('sickbeard/config.ini.erb'),
    owner  => "${user}",
    group  => "${group}",
    mode    => '0644';
  }
}