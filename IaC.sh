#! /bin/bash

echo "Iniciando configurações ..............."

# Criando diretorios
mkdir /publico /adm /ven /sec


# Criando grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


# Criando usuários

#GRP_ADM
useradd carlos -c "Carlos Alberto Maia" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria da Graças Silva" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João Guilherme Souza" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd joao -e

#GRP_VEN
useradd debora -c "Débora Lyra" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto José Souza" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd roberto -e

#GRP_SEC
useradd josefina -c "Josefina Augusta Gomes" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Barbosa" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio Cavalcanti" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd rogerio -e 


# Definindo configurações dos diretórios

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


# Definindo Permissões

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "Configuração finalizada! ........................"
