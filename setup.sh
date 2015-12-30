#!/bin/bash
#===============================================================================
#
#          FILE:  setup.sh
# 
#         USAGE:  ./setup.sh 
# 
#   DESCRIPTION:  setup script for SELinux. Compatible with Redhat and Debian 
#									systems.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   pggsx 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  12/23/2015 01:59:56 AM EST
#      REVISION:  ---
#===============================================================================

	arch=$(uname -m)
	kernel=$(uname -r)
	if [ -f /etc/lsb-release ]; then
	    os=$(lsb_release -s -d)
	elif [ -f /etc/debian_version ]; then
			 os="Debian $(cat /etc/debian_version)"
			sudo apt-get	install selinux
	elif [ -f /etc/redhat-release ]; then
	     os=`cat /etc/redhat-release`
	else
	     os="$(uname -s) $(uname -r)"
	fi
