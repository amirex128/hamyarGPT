### install php 8.2
```
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php8.2 php8.2-cli php8.2-common php8.2-opcache php8.2-mysql php8.2-mbstring php8.2-zip php8.2-fpm php8.2-gd php8.2-curl php8.2-xml php8.2-gd  php8.2-{bz2,intl} php8.2-xdebug php8.2-bcmath  php8.2-fpm 
```
### install composer
``` shell
curl -sS https://getcomposer.org/installer -o composer-setup.php
HASH=$(curl -sS https://composer.github.io/installer.sig)
php -r "if (hash_file('sha384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

composer install
composer update
composer dump-autoload
php artisan cache:clear
composer update 

```
## install mariadb
```
sudo apt install mariadb-server
sudo mysql_secure_installation
```
set username and password root
### create database
login to mysql cli and then create database and finally exit
```
mysql -u root -p
```
```sql
CREATE DATABASE hamyargpt;
```
### import backup database
```
mysql -u root -p hamyargpt < hamyargpt.sql
```
run program

```
php artisan serve
```
admin user
```
admin@admin.com
a6766581
```
normal user
```
amirex128@gmail.com
a6766581
```