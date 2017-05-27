#!/bin/bash
echo -e "\033[1;33m ATENÃ‡ÃƒO \033[0m"
echo "  Este Install foi programado para Instalar o LAMP para distribuiÃ§Ã£o do Linux Debian 8 32x ou 64x."
echo " Durante a InstalaÃ§Ã£o serÃ¡ solicitado varias vezes para digitar uma senha. Escolha agora uma senha pessoal de sua preferÃªncia"
echo -e "  Sempre que for solicitado para digite uma \033[1;31mSenha\033[0m ou \033[1;31mPassword\033[0m use sempre esta mesma senha que vocÃª escolheu."
echo -e "  Utilize uma senha sem caracteres especiais ou espaÃ§o, somente \033[1;31mLETRAS E NÃšMEROS\033[0m."
echo -e "  \033[1;31mLEMBRE-SE\033[0m desta senha ela serÃ¡ solicitadas varias vezes durante a InstalaÃ§Ã£o."
echo -e "  Sempre que solicitado \033[1;31m[Y/N]\033[0m escolha a opÃ§Ã£o \033[1;31mY\033[0m."
tput setaf 3 ; tput bold ; read -n 1 -s -p "Aperte qualquer tecla para continuar..." ; echo "" ; echo "" ; tput sgr0
echo "INSTALAÃ‡ÃƒO DO PAINEL SSH 3 INICIADA!"
echo ""
echo ""
echo -e "\033[01;33mAtualizando sistema\033[01;37m!" 
apt-get update -y && apt-get upgrade -y
echo -e "\033[01;33mImplantando Apache...\033[01;37m" 
apt-get install apache2 -y
echo -e "\033[01;33mImplantando PHP 5...\033[01;37m" 
apt-get install php5 libapache2-mod-php5 php5-mcrypt -y
sudo service apache2 restart
echo -e "\033[01;33mImplantando MySQL...\033[01;37m" 
apt-get install mysql-server php5-mysql -y
sudo mysql_install_db
sudo mysql_secure_installation
echo -e "\033[01;33mImplantando PHPMyAdmin...\033[01;37m" 
apt-get install phpmyadmin -y
sudo php5enmod mcrypt
sudo service apache2 restart
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
echo -e "\033[01;33mImplantando modulo SSH2...\033[01;37m" 
apt-get install libssh2-1-dev libssh2-php -y
php -m |grep ssh2
Precisa aparecer ssh2
sudo service apache2 restart
echo -e "\033[01;33mConfigurando banco de dados...\033[01;37m"
mysql -h localhost -u root -p root -e "grant all privileges on *.* to root@'localhost' identified by 'root'; commit;
flush privileges;"
echo -e "\033[01;33mCriando banco de dados...\033[01;37m"
mysql -h localhost -u root -p root -e "CREATE DATABASE painel"
echo -e "\033[01;33mInstalando painel...\033[01;37m"
apt-get install unzip -y
cd /var/www/html
wget https://msaulohenrique.github.io/verificar_versao/painelssh3.0.zip
unzip painelssh3.0.zip
echo -e "\033[01;33mConfigurando atividade cron...\033[01;37m"
echo '* * * * * root /usr/bin/php /var/www/html/pages/system/cron.php' >> /etc/crontab
echo '* * * * * root /usr/bin/php /var/www/html/pages/system/cron.ssh.php ' >> /etc/crontab
echo '* * * * * root /usr/bin/php /var/www/html/pages/system/cron.sms.php' >> /etc/crontab
echo '* * * * * root /usr/bin/php /var/www/html/pages/system/cron.online.ssh.php' >> /etc/crontab
echo '10 * * * * root /usr/bin/php /var/www/html/pages/system/cron.servidor.php' >> /etc/crontab
/etc/init.d/cron reload
/etc/init.d/cron restart
service apache2 restart
clear
tput bel
echo ""
echo -e "\033[1;33m INSTALAÃ‡ÃƒO TERMINOU COM SUCESSO. \033[0m"
echo ""
echo "  Acesse seu Painel de Gerenciamente SSH por qualquer navegador de internet com os seguintes dados:"
echo ""
echo -e "\033[1;31m      PAINEL DO ADMINISTRADOR\033[0m"
echo -e "\033[1;34m          http://seuip/admin\033[0m"
echo -e "\033[1;34m          UsuÃ¡rio: $admin\033[0m"
echo -e "\033[1;34m          Senha: admin\033[0m"
echo ""
echo -e "\033[1;31m      PAINEL DO REVENDEDOR\033[0m"
echo -e "\033[1;34m          http://seuip/\033[0m"
echo -e "\033[1;34m          UsuÃ¡rio e Senha Determinados no painel do administrador\033[0m"
echo ""
echo "  O reboot e obrigatÃ³rio e serÃ¡ executado automaticamente, apÃ³s ser executado vocÃª pode fechar o terminal e acessar o painel pelo navegador."
echo ""
tput setaf 3 ; tput bold ; read -n 1 -s -p " Reboot AutomÃ¡tico, aperte qualquer tecla para continuar..." ; echo "" ; echo "" ; tput sgr0
for((i = 5; i >= 1; i--))
	do
	clear
	echo ""
	echo " Reboot AutomÃ¡tico do Sistema em $i..."
	sleep 1
done
reboot
exit 1