#!/bin/sh


# NOTE: This is an example that sets up SSH authorization. To use it, you'd need to replace "ssh-rsa AA... youremail@example.com" with your SSH public.
# You can replace this entire script with anything you'd like, there is no need to keep it

mkdir -p /root/.ssh
chmod 600 /root/.ssh
echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDikRSQnx1gqlyynTAl0bNc8Dvm4oLqHwmIdhdNnju6VAC3DATT7H2J6cm7O6RbaUX7swFaqRSV7+7Ay6jd97MeIv3/j0/KyW3BnK5HTE2mQuDtdXrHippUJsLrplh+gYUDhIccDmX0lLL4mnR+Tb9WG7OAvzY425o9YwrXyNrYvBuhAc0clo1x5RXEuTubINU8L1TeDgbbd21GwwBNem4yv2IsrTSaFlon8tePxWliESAWJpPBGziW2RLwLtOJ5xY63OxuRpBRJn/iCFys67eMg9kQHUs2s3edrJEwrTsUpqsHsHcgzmEwEfGJlQtle8K+iLNSlD06Qhe6T5amUxFp voiddog@foxmail.com > /root/.ssh/authorized_keys
chmod 700 /root/.ssh/authorized_keys

yum install git vim zsh wget -y
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
wget --no-check-certificate -O shadowsocks-libev.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev.sh
chmod +x shadowsocks-libev.sh
./shadowsocks-libev.sh 2>&1 | tee shadowsocks-libev.log
