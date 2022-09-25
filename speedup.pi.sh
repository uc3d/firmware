#!/bin/bash
IP=$1
if [ -z "$IP" ];
then
    echo 'missing IP'
    exit 1;
fi
cat <<EOT >> /etc/dhcpcd.conf
interface wlan0
static ip_address=$IP/24
static routers=192.168.0.1
static domain_name_servers=192.168.0.1
noarp
ipv4only
noipv6
EOT
sudo rm -fv /etc/systemd/system/dhcpcd.service.d/wait.conf
sudo systemctl disable hciuart.service
cat <<EOT | cat - /etc/init.d/raspi-config | sudo tee /etc/init.d/raspi-config
#!/bin/sh
SYS_CPUFREQ_GOVERNOR=/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
if [ -e \$SYS_CPUFREQ_GOVERNOR ]; then
echo "performance" > \$SYS_CPUFREQ_GOVERNOR
fi
exit 0
EOT
