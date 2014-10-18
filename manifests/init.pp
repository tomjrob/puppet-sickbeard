class sickbeard (
  $base_dir,
  $url,
  $service_manage,
  $user,
  $group,
  $package_deps,
  $gem_deps,
  $port,
  $host,
  
  $general = {},
  $blackhole = {},
  $ezrss = {},
  $tvtorrents = {},
  $btn = {},
  $thepiratebay = {},
  $torrentleech = {},
  $iptorrents = {},
  $nextgen = {},
  $kat = {},
  $publichd = {},
  $kickasstorrents = {},
  $sceneaccess = {},
  $boxcar2 = {},
  $scc = {},
  $hdtorrents = {},
  $torrentday = {},
  $hdbits = {},
  $speedcd = {},
  $binsearch = {},
  $nzbs = {},
  $newzbin = {},
  $womble = {},
  $omgwtfnzbs = {},
  $sabnzbd = {},
  $nzbget = {},
  $torrent = {},
  $xbmc = {},
  $plex = {},
  $growl = {},
  $prowl = {},
  $twitter = {},
  $boxcar = {},
  $pushover = {},
  $libnotify = {},
  $nmj = {},
  $nmjv2 = {},
  $synology = {},
  $synologynotifier = {},
  $trakt = {},
  $pytivo = {},
  $nma = {},
  $pushalot = {},
  $pushbullet = {},
  $email = {},
  $newznab = {},
  $torrentrss = {},
  $gui = {},
  $subtitles = {},
  $faileddownloads = {},
) {
  
  validate_absolute_path($base_dir)
  validate_string($url)
  validate_bool($service_manage)
  validate_string($user)
  validate_string($group)
  
  $log_dir = "${base_dir}/log"
  $config_dir = "${base_dir}/config"
  
  $venv_dir = "${base_dir}/venv"
  $src_dir = "${base_dir}/src"
  
	
  
  anchor { 'sickbeard::begin': } ->
  class { '::sickbeard::install_deps': } ->
  class { '::sickbeard::install': } ->
    class { '::sickbeard::service': } ->
  anchor { 'sickbeard::end': }
  }
