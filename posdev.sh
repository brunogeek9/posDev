#!/bin/sh
clear
alias instalar_sublime='add-apt-repository ppa:webupd8team/sublime-text-3 && apt update && apt install sublime-text-installer'
alias instalar_atom='add-apt-repository ppa:webupd8team/atom && apt update && apt install atom'
alias instalar_mysql='apt install mysql-server mysql-client mysql-workbench'
alias instalar_JDK='add-apt-repository ppa:webupd8team/java && apt update && apt install oracle-java8-installer'
alias instalar_midia='apt install vlc qbittorrent comix ubuntu-restricted-extras'
alias jogar='apt install wine winetricks playonlinux'
while true; do
echo "==========================================================
        Digite o número do componente a ser instalado:
        1 - Minhas IDEs
        2 - Mysql
        3 - Java JDK
        4 - Midia (vlc + audaciti + codecs + comix)
        5 - Sobre
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
      instalar_sublime
      instalar_atom;;
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
        echo
        echo "Instalando meus softwares de midia"
        echo ;;
    5)
        echo
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
