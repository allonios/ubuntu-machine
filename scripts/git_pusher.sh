if [ "0" == `ifconfig | grep tun0 | wc -l` ]; then
    echo "======================================================"
    echo "vpn off"
    echo "press enter after the vpn is connected and re-run the command."
    echo "======================================================"
    sudo -b openvpn --config ~/ubuntu_machine/VPN/KN-KW.ovpn --auth-user-pass ~/ubuntu_machine/VPN/pass_kw.txt
else
    echo "vpn on"
    git push
    sudo killall openvpn
fi
