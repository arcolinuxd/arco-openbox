#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "Fix shortcut keyboard super + S"

sudo sed -i 's/xfce4-session-logout/oblogout/g' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml

echo "Sardi icons applied when logging out or shutdown or ..."

sudo sed -i 's/buttontheme = oxygen/buttontheme = Sardi-Oblogout/g' /etc/oblogout.conf
#sudo sed -i 's/'buttontheme = oxygen'/'buttontheme = adeos-branco'/g' /etc/oblogout.conf
#sudo sed -i 's/'buttontheme = oxygen'/'buttontheme = adeos-branco-mono'/g' /etc/oblogout.conf
#sudo sed -i 's/'buttontheme = oxygen'/'buttontheme = adeos-branco-cores'/g' /etc/oblogout.conf

echo "################################################################"
echo "####                  ICONS ARE NOW APPLIED               ######"
echo "################################################################"
