#!/bin/sh
#contamos sempre que você esteja logado como root para executar o script
clear
alias instalar_vscode ='snap install vscode'
alias instalar_mysql='apt install mysql-server mysql-client mysql-workbench'
alias instalar_JDK='add-apt-repository ppa:webupd8team/java && apt update && apt install oracle-java8-installer'
alias instalar_midia='apt install vlc qbittorrent ubuntu-restricted-extras'
alias comics='snap install qcomicbook'
alias jogar='apt install wine winetricks playonlinux'
alias instalar_web='apt install qbittorrent && snap install brave'
while true; do
echo "==========================================================
        Digite o número do componente a ser instalado:
        1 - vscode
        2 - Mysql
        3 - Java JDK
        4 - Midia (vlc + codecs + leitor de quadrinhos)
        5 - Internet pack (brave browser + qbittorrent)
        6 - Sobre 
        0 - Sair
==========================================================="
echo -n "->OPÇÃO:  "

read op

#verificar se foi digitada uma opcao
if [ -z $op ]; then
    echo "Digite algo"
    exit
fi
clear
case $op in
    1)
      #echo
      #echo "Instalando IDEs"
      #echo ;;
      echo "IDEs instaladas"
      instalar_vscode;;
      #echo
      #echo "IDEs instaladas"
      #echo ;;
    2)
        instalar_mysql
        echo
        echo "Instalando mysql workbench,server e client"
        echo ;;
    3)
        instalar_JDK
        echo
        echo "Instalando o java"
        echo ;;
    4)
        instalar_midia
        comics
        echo
        echo "Instalando meus softwares de midia"
        echo ;;
    
    5)  instalar_web
        echo
        echo "Instalando o brave browser e o qbittorrent"
        echo ;;
        
    6)  echo
        echo "O que e instalado em cada opção? "
        echo "Em Cada opção e instalado um grupo de softwares uteis em minha vida como desenvolvedor"
        echo "minhas IDEs : são instalado o sublimetext e o atom,softwares muito utilizados no desenvolvimento de software"
        echo "mysql : e instalado o um servidor mysql com todos os software necessarios para seu gerenciamento"
        echo "java JDK: e adicionado o PPA do jdk e o mesmo e instalado"
        echo "Midia : são instalados o vlc,comix e extras como codecs de midia e adobeflash player"
        echo ;;
    
    0)
        echo "Saindo..."
        exit;;
    *)
        echo
        echo "ERRO: opção inválida"
        echo ;;
esac
done
