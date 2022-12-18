#!/bin/bash


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
        read -p "Nome Do Diretório a Ser Criado: " nome
        mkdir $nome
        read -p "Deseja Criar Outro Diretório (S/N)? " resp

done

resp="s"
while [ $resp == "s" ]
do
        read -p "Nome Do Grupo a Ser Criado: " groups
        groupadd $groups
        read -p "Deseja Criar Outro Grupo (S/N)? " resp

done

resp="s"
while [ $resp == "s" ]
do
        read -p "Nome Do usuário a Ser Criado: " users
        read -p "Escolha Uma Senha: " senha
        useradd $users -m -s /bin/bash -p $(openssl passwd -crypt $senha)
        read -p "Deseja Criar Outro Usuário? " resp

done