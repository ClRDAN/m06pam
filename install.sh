#! /bin/bash
# @edt ASIX M06 2018-2019
# instalacion cliente PAM examen
# - crear usuarios locales
#----------------------------
cp /opt/docker/system-auth.edt /etc/pam.d/system-auth.edt
cp /opt/docker/pam_mount.conf.xml /etc/security/
cp /opt/docker/nsswitch.conf /etc/
ln -fs /etc/pam.d/system-auth.edt /etc/pam.d/system-auth
./authconfig.conf
useradd -g users exam01 
useradd -g users exam02
useradd -g users exam03
echo "exam01" | passwd --stdin exam01
echo "exam02" | passwd --stdin exam02
echo "exam03" | passwd --stdin exam03
/usr/sbin/nslcd
