#!/bin/bash

# Autor: Thiago Araújo
# E-mail: thiagodevmobile@gmail.com
# Linkedin: https://www.linkedin.com/in/thiago-4raujo/ 

echo "         _______  _______  _______    _______          _________ _______  "
echo "|\     /|(  ____ \(  ____ \(  ____ )  (  ___  )|\     /|\__   __/(  ___  )"
echo "| )   ( || (    \/| (    \/| (    )|  | (   ) || )   ( |   ) (   | (   ) |"
echo "| |   | || (_____ | (__    | (____)|  | (___) || |   | |   | |   | |   | |"
echo "| |   | |(_____  )|  __)   |     __)  |  ___  || |   | |   | |   | |   | |"
echo "| |   | |      ) || (      | (\ (     | (   ) || |   | |   | |   | |   | |"
echo "| (___) |/\____) || (____/\| ) \ \__  | )   ( || (___) |   | |   | (___) |"
echo "(_______)\_______)(_______/|/   \__/  |/     \|(_______)   )_(   (_______)"
echo "                                                                    1.1   "


resp="s"
while [ $resp == "s" ]
do
        read -p "Nome Do Diretório a Ser Criado: " directory
        mkdir $directory
        read -p "Deseja Criar Outro Diretório (S/N)? " resp

done

resp="s"
while [ $resp == "s" ]
do
        read -p "Nome Do Grupo a Ser Criado: " groups
        groupadd $groups
        read -p "Deseja Adicionar o Grupo $groups ao Diretório $diretorio? (S/N) " addirectory
        if [ "$addirectory" != "" ]
        then
                chown root:$groups $directory
                read -p "Diga a Permissão a Ser Dado a Este Diretório: " permissions
                chmod $permissions $directory
        fi
        read -p "Deseja Criar Outro Grupo (S/N)? " resp

done

resp="s"
while [ $resp == "s" ]
do
        read -p "Nome Do usuário a Ser Criado: " users
        read -p "Escolha Uma Senha: " senha
        read -p "Adicionar Usuário a algum Grupo? " adgroup
        if [ "$adgroup" = "" ];
        then
                useradd $users -m -s /bin/bash -p $(openssl passwd -crypt $senha)

        else
                useradd $users -m -s /bin/bash -p $(openssl passwd -crypt $senha) -G $adgroup
        fi
        read -p "Deseja Criar Outro Usuário? " resp

done