#!/bin/bash


echo "         _______  _______  _______    _______          _________ _______  "
echo "|\     /|(  ____ \(  ____ \(  ____ )  (  ___  )|\     /|\__   __/(  ___  )"
echo "| )   ( || (    \/| (    \/| (    )|  | (   ) || )   ( |   ) (   | (   ) |"
echo "| |   | || (_____ | (__    | (____)|  | (___) || |   | |   | |   | |   | |"
echo "| |   | |(_____  )|  __)   |     __)  |  ___  || |   | |   | |   | |   | |"
echo "| |   | |      ) || (      | (\ (     | (   ) || |   | |   | |   | |   | |"
echo "| (___) |/\____) || (____/\| ) \ \__  | )   ( || (___) |   | |   | (___) |"
echo "(_______)\_______)(_______/|/   \__/  |/     \|(_______)   )_(   (_______)"
echo "                                                                    1.0   "

#criação de diretórios
echo "criando os diretórios aguarde..."
mkdir public adm ven sec
sleep 2

echo""
#criação dos Grupos
echo "criando os gurpos aguarde..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
sleep 2

echo ""
#criação de usuários, todos os usuários serão criados com senhas padões mas ao relizarem o login será obroigatório a troca de senha.
echo "criando os usuários aguarde..."
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd rogerio -c "Rogério" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

sleep 2
echo ""