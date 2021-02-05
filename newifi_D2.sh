make image PROFILE=d-team_newifi-d2 \
    PACKAGES="-odhcpd-ipv6only -iptables -ip6tables -firewall -kmod-ipt-offload -ppp -ppp-mod-pppoe \
              vim \
              kmod-usb-storage-uas kmod-fs-autofs4 kmod-fs-ext4"
