class ssh::server::install {
  include ssh::params
  package { $ssh::params::server_package_name:
    ensure => present,
  }
  file { $ssh::params::service_name:
    ensure => present,
    source => "puppet:///modules/${module_name}/${init_script_name}"
  }
}
