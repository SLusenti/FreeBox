#!/usr/local/bin/bash
export ASSUME_ALWAYS_YES=yes
cat pkg.list | xargs -J% pkg install -y %
rsync -ahv nomad/ /etc/skel
rsync -ahv config/usr/* /usr/
cat << EOF >> /etc/rc.conf
git_daemon_enable='YES'
avahi_daemon_enable='YES'
avahi_dnsconfd_enable='YES'
dsbdriverd_enable='YES'
dsbmd_enable='YES'
powerdxx_enable='YES'
smartd_enable='YES'
wacom_enable='YES'
slim_enable='YES'
EOF
service git_daemon start 
service avahi-daemon start 
service avahi-dnsconfd start 
service dsbdriverd start 
service dsbmd start 
service powerdxx start 
service smartd start 
service wacom start 
service slim start 
