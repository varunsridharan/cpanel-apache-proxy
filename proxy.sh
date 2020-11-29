#!/bin/bash
echo "========================================================="
echo "==!! cPanel Apache Reverse Proxy !!=="
echo "========================================================="
echo ""
DOMAIN=$2
USER=$1
LOCAL=$3

if [[ -z "$USER" ]]; then
    echo "Set a valid cPanel User "
    exit 1
fi

if [[ -z "$DOMAIN" ]]; then
    echo "Set a valid Domain Name"
    exit 1
fi

if [[ -z "$LOCAL" ]]; then
    echo "Set a valid Local Proy Path"
    exit 1
fi

STD_DIR="/etc/apache2/conf.d/userdata/std/2_4/$1/$2"
SSL_DIR="/etc/apache2/conf.d/userdata/ssl/2_4/$1/$2"
STD_FILE="$STD_DIR/proxy_pass.conf"
SSL_FILE="$SSL_DIR/proxy_pass.conf"

echo " cPanel User : $USER"
echo " Domain      : $DOMAIN"
echo " Local       : $LOCAL"
echo " STD File    : $STD_FILE"
echo " SSL File    : $SSL_FILE"

sudo mkdir -p $STD_DIR
sudo mkdir -p $SSL_DIR
sudo touch $STD_FILE
sudo touch $SSL_FILE

echo "
# DO NOT REMOVE BELOW LINE. IT USED TO AUTO RENEW SSL VIA CPANEL
ProxyPass \"/.well-known\"  !
# DO NOT REMOVE ABOVE LINE. IT USED TO AUTO RENEW SSL VIA CPANEL

ProxyPass \"/\"  \"$LOCAL\"
ProxyPassReverse \"/\"  \"$LOCAL\"
" > $STD_FILE

echo " include $STD_FILE"  > $SSL_FILE

echo " "
echo " "
echo " Use /scripts/rebuildhttpdconf to rebuild apache config"
echo " Restart after rebuild : service httpd restart "
echo " "
