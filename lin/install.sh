
# deps
apt install \
  byobu \
  fail2ban \
  dconf-editor \
  gnome-tweaks \
  chrome-gnome-shell \
  nemo

# caps => ctrl in terminal
# /etc/default/keyboard
XKBOPTIONS="ctrl:nocaps"
sudo dpkg-reconfigure keyboard-configuration

# nemo
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true
# add `nemo-desktop` to startupapps
# dconf-editor /org/nemo/desktop
gsettings set org.nemo.desktop vertical-grid-adjust 1.0
gsettings set org.nemo.desktop horizontal-grid-adjust 1.0
gsettings set org.nemo.desktop trash-icon-visible true

# nautilus
# xdg-mime default nautilus.desktop inode/directory application/x-gnome-saved-search
# gsettings set org.gnome.desktop.background show-desktop-icons true

# misc
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.peripherals.keyboard delay 275
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 10
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat


# cleanup
cd /usr/share/gnome-shell/extensions
rm -rf *

# remove emoji input
ibus-setup

# enable VM USB
sudo adduser $USER vboxusers

# key => ppk
# puttygen key.pem -o key.ppk -O private
# puttygen key.pem -o key.pub -O public

# putty => key
# puttygen key.ppk -O private-openssh -o key.key

# pem
# openssl x509 -in bundle.crt -out bundle.pem -outform PEM

