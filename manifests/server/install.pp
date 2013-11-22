class ssh::server::install {
  include ssh::params
  package { $ssh::params::server_package_name:
    ensure => present,
  }
  file { "/etc/init.d/${ssh::params::service_name}":
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => "puppet:///modules/${module_name}/${init_script_name}"
  }
}
