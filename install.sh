#!/bin/bash
echo -e "\033[1;33m ATENÃ‡ÃƒO \033[0m"
echo "  Este Install foi programado para Instalar o LAMP para distribuiÃ§Ã£o do Linux Debian 8 32x ou 64x."
echo " Durante a InstalaÃ§Ã£o serÃ¡ solicitado varias vezes para digitar uma senha. Escolha agora uma senha pessoal de sua preferÃªncia"
echo "  Sempre que for solicitado para digite uma \033[1;31mSenha\033[0m ou \033[1;31mPassword\033[0m use sempre esta mesma senha que vocÃª escolheu."
echo "  Utilize uma senha sem caracteres especiais ou espaÃ§o, somente \033[1;31mLETRAS E NÃšMEROS\033[0m."
echo "  \033[1;31mLEMBRE-SE\033[0m desta senha ela serÃ¡ solicitadas varias vezes durante a InstalaÃ§Ã£o."
echo "  Sempre que solicitado \033[1;31m[Y/N]\033[0m escolha a opÃ§Ã£o \033[1;31mY\033[0m."
tput setaf 3 ; tput bold ; read -n 1 -s -p "Aperte qualquer tecla para continuar..." ; echo "" ; echo "" ; tput sgr0
echo "INSTALAÃ‡ÃƒO DO PAINEL SSH 3 INICIADA!"
apt-get update && apt-get upgrade -y
	apt-get install lsb-release -y
	apt-get install curl -y
	apt-get install unzip -y
	apt-get install apache2 -y
	apt-get install php5 libapache2-mod-php5 php5-mcrypt -y
	service apache2 restart
	clear
	tput bel
	echo ""
	echo -e "\033[1;33m ATENÃ‡ÃƒO. \033[0m"
	echo ""
	echo "  Durante a InstalaÃ§Ã£o serÃ¡ solicitado varias vezes para digitar uma senha. Escolha agora uma senha pessoal de sua preferÃªncia"
	echo -e "  Sempre que for solicitado para digite uma \033[1;31mSenha\033[0m ou \033[1;31mPassword\033[0m use sempre esta mesma senha que vocÃª escolheu."
	echo -e "  Utilize uma senha sem caracteres especiais ou espaÃ§o, somente \033[1;31mLETRAS E NÃšMEROS\033[0m."
	echo -e "  \033[1;31mLEMBRE-SE\033[0m desta senha ela serÃ¡ solicitadas varias vezes durante a InstalaÃ§Ã£o."
	echo ""
	tput setaf 3 ; tput bold ; read -n 1 -s -p "Aperte qualquer tecla para continuar..." ; echo "" ; echo "" ; tput sgr0
	apt-get install mysql-server php5-mysql -y
	mysql_install_db
	clear
	tput bel
	echo ""
	echo -e "\033[1;33m ATENÃ‡ÃƒO. \033[0m"
	echo ""
	echo -e "  Quando aparecer a mensagem \033[1;31mEnter current password for root (enter for none):\033[0m, digite a senha pessoal que vocÃª escolheu no inicio da instalaÃ§Ã£o."
	echo ""
	echo -e "  Sempre que solicitado \033[1;31m[Y/N]\033[0m escolha a opÃ§Ã£o \033[1;31mY\033[0m."
	echo ""
	tput setaf 3 ; tput bold ; read -n 1 -s -p "Aperte qualquer tecla para continuar..." ; echo "" ; echo "" ; tput sgr0
	mysql_secure_installation
	clear
	tput bel
	echo ""
	echo -e "\033[1;33m ATENÃ‡ÃƒO. \033[0m"
	echo ""
	echo -e "  Para a seleÃ§Ã£o do servidor, escolha \033[1;31mAPACHE2\033[0m."
	echo -e "  Selecione \033[1;31mYES\033[0m quando perguntado se deseja usar \033[1;31mdbconfig-common\033[0m para configurar o banco de dados."
	echo "  Sua senha sera solicitada algumas vezes, lembre-se de usar sempre a mesma senha escolhida no inicio da instalaÃ§Ã£o."
	echo ""
	tput setaf 3 ; tput bold ; read -n 1 -s -p "Aperte qualquer tecla para continuar..." ; echo "" ; echo "" ; tput sgr0
	apt-get install phpmyadmin -y
	php5enmod mcrypt
	service apache2 restart
	ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
	apt-get install libssh2-1-dev libssh2-php -y
	service apache2 restart
		clear
		echo ""
		stty -echo
		tput setaf 7 ; tput bold ; read -p "Password: " var4 ; tput sgr0
		echo ""
		stty echo ; clear
		mysql -h localhost -u root -p$var4 -e "CREATE DATABASE painel"
		service apache2 restart
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
echo -e "\033[1;34m          UsuÃ¡rio: admin\033[0m"
echo -e "\033[1;34m          Senha: admin\033[0m"
echo ""
echo -e "\033[1;31m      PAINEL DO REVENDEDOR\033[0m"
echo -e "\033[1;34m          http://seuip/\033[0m"
echo -e "\033[1;34m          UsuÃ¡rio e Senha Determinados no painel do administrador\033[0m"
echo ""
echo "  O reboot e obrigatÃ³rio e serÃ¡ executado automaticamente, apÃ³s ser executado vocÃª pode fechar o terminal e acessar o painel pelo navegador."
exit 1
