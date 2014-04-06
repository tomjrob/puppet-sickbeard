class sickbeard::service inherits sickbeard {
  if $service_manage == true {
    supervisor::service { 'sickbeard':
    command        => "${venv_dir}/bin/python ${src_dir}/SickBeard.py --nolaunch --datadir=${config_dir} --config=${config_dir}/config.ini",
    ensure         => present,
    enable         => true,
    stdout_logfile => "${log_dir}/supervisor.log",
    stderr_logfile => "${log_dir}/supervisor.log",
    user           => "${user}",
    group          => "${group}";
    }
    
  # Start Supervisor Inet Service
    ensure_resource("class", "supervisor", {
    "enable_inet_server" => true
    }
    )
  }
}