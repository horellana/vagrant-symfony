sudo apt-get update -y --force-yes
sudo apt-get upgrade -y --force-yes

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get install -y -f --force-yes php5 php5-mcrypt php5-cli php5-mysql mysql-server apache2 libapache2-mod-php5
sudo apt-get install -y -f --force-yes git

sudo curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony
sudo chmod a+x /usr/local/bin/symfony

php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/bin/composer
