#!/usr/bin/env bash 

# Source-Instructions & Code: https://gist.github.com/756445638/5c2095ce3eabf7f164a54be58c4ef375

# disable system netbiosd-daemon
sudo launchctl stop com.apple.netbiosd
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.netbiosd.plist

# disable system samba-daemon
sudo launchctl stop com.apple.samba

# create dirs that need to be there
mkdir /usr/local/Cellar/samba/3.6.8/var/locks
mkdir /usr/local/Cellar/samba/3.6.8/private

# set smb password for the current user
sudo smbpasswd -a "$(whoami)"

# install new samba into launchd
sudo rm /Library/LaunchAgents/org.samba.smbd.plist
sudo curl https://gist.github.com/kud/6587477/raw/1babece0531f275a932e32ef3d5c344f676af043/org.samba.smbd.plist >> /Library/LaunchAgents/org.samba.smbd.plist

sudo launchctl load -w /Library/LaunchAgents/org.samba.smbd.plist

# install new netbios into launchd
sudo rm /Library/LaunchAgents/org.samba.nmbd.plist
sudo curl https://gist.github.com/kud/6587477/raw/6d3eeefaa27909dcb09e1664a4473229cfc77214/org.samba.nmbd.plist >> /Library/LaunchAgents/org.samba.nmbd.plist

sudo launchctl load -w /Library/LaunchAgents/org.samba.nmbd.plist
