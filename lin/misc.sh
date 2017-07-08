
# gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.peripherals.keyboard delay 275
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 10

# GNOME icons right
dconf write /org/gnome/desktop/wm/preferences/button-layout "':minimize,maximize,close'"

# caps => ctrl in terminal
# /etc/default/keyboard
XKBOPTIONS="ctrl:nocaps"
sudo dpkg-reconfigure keyboard-configuration

# ppk
puttygen key.pem -o key.ppk -O private
puttygen key.pem -o key.pub -O public

# pem
openssl x509 -in bundle.crt -out bundle.pem -outform PEM

# irc
ircs://server.com:9999/?pass=password

/msg *sasl mechanism
/msg *sasl mechanism plain
/msg *sasl set username password


# # scale
# xrandr --output DP-2 --scale 0.66667x0.66667

# # cert order
# cat domain_com.crt \
# COMODORSADomainValidationSecureServerCA.crt \
# COMODORSAAddTrustCA.crt \
# AddTrustExternalCARoot.crt > domain.crt
