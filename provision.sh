#!/usr/bin/env bash

echo "=============================="
echo -e "Starting Provision... \r0% "
echo "=============================="

# Create MySQL DB for TYPO3
echo -e "Installing TYPO3.Themes DB... \r30% "
echo "CREATE DATABASE typo3" | mysql -uroot -p1234
mysql -uroot -p1234 typo3 < /var/www/typo3db/typo3db.sql

# Restart MySQL
echo -e "Restarting MySQL... \r70% "
service mysql restart > /dev/null 2>&1
# Restart Apache
echo -e "Restarting Apache... \r90% "
service apache2 restart > /dev/null 2>&1
echo "Provision complete!"
sleep 2
echo "=============================="
echo "========== INFO =============="
echo "=============================="
echo "VM IP"
ifconfig | perl -nle'/dr:(\S+)/ && print $1'
echo "=============================="
echo "=============================="
echo "TYPO3 login: admin"
echo "TYPO3 password: admin1234"
echo "TYPO3 install tools password: admin1234"
echo "------------------------------"
echo "DB name: typo3"
echo "DB login: root"
echo "DB password: 1234"
echo "=============================="
echo "=============================="
echo "Open site in browser using IP address"

