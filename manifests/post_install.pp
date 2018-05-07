# == Class grafana::post_install
#
# create plugins subfolder after the installation
#
class grafana::post_install {

  file { "${::grafana::data_dir}/plugins":
    ensure  => directory,
    group   => 'grafana',
    owner   => 'grafana',
  }
}
