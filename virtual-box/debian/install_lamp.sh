#!/bin/bash

# Update het systeem
sudo apt update && sudo apt upgrade -y

# 1. Installeer Apache
sudo apt install apache2 -y

# 2. Installeer MariaDB (Database)
sudo apt install mariadb-server mariadb-client -y

# 3. Voeg PHP repository toe voor PHP 8.5
sudo apt install -y lsb-release ca-certificates curl properly-v2
sudo curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg
echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt update

# 4. Installeer PHP 8.5 en modules
sudo apt install php8.5 php8.5-cli php8.5-common php8.5-mysql php8.5-zip php8.5-gd php8.5-mbstring php8.5-curl php8.5-xml php8.5-bcmath libapache2-mod-php8.5 -y

# 5. Installeer Cockpit (Het Admin Panel)
# Dit is een modern, lichtgewicht alternatief voor DirectAdmin voor Linux beheer.
sudo apt install cockpit -y
sudo systemctl enable --now cockpit.socket

# 6. Installeer phpMyAdmin (Database beheer)
sudo apt install phpmyadmin -y
# Tijdens de installatie zal gevraagd worden om Apache te selecteren (gebruik spatiebalk en enter)

# Herstart Apache om alles te activeren
sudo systemctl restart apache2

echo "------------------------------------------------"
echo "Installatie voltooid!"
echo "Apache/Webserver: http://localhost (of je VM IP)"
echo "phpMyAdmin: http://localhost/phpmyadmin"
echo "Admin Panel (Cockpit): https://localhost:9090"
echo "------------------------------------------------"