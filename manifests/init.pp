import 'stdlib'

# Class cron
#
#  Manages the cron installation
#
# @author Nikita Ofitserov <himikof@gmail.com>
# @version 1.0
# @package cron
#
class cron {

  # Package installation
  case $operatingsystem {
    gentoo:
    {
      package { 'cron':
        ensure   => 'latest',
        name     => 'vixie-cron',
        category => 'sys-process',
      }
      
      service { 'cron':
        ensure => 'running',
        name   => 'vixie-cron',
        enable => 'true',
      }
    }
  }
}
