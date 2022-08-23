#!/bin/bash

echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretórios criados com sucesso!"
echo "\n ------------------------------------- \n"


echo "Criando Grupos de usuários..."
groupadd GRUPO-ADM
groupadd GRUPO-VEN
groupadd GRUPO-SEC
echo "Grupos criados com sucesso!"
echo "\n ------------------------------------- \n"

echo "Criando usuários..."

useradd jhon -c "Jhon" -s /bin/bash -m -p $(openssl passwd -crypt senhajhon) -G GRUPO-ADM
useradd paul -c "Paul" -s /bin/bash -m -p $(openssl passwd -crypt senhapaul) -G GRUPO-ADM
useradd alen -c "Alen" -s /bin/bash -m -p $(openssl passwd -crypt senhaalen) -G GRUPO-ADM

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt senhabedora) -G GRUPO-VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt senhasebastiana) -G GRUPO-VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt senharoberto) -G GRUPO-VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt senhajosefina) -G GRUPO-SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt senhaamanda) -G GRUPO-SEC
useradd joana -c "Joana" -s /bin/bash -m -p $(openssl passwd -crypt senhajoana) -G GRUPO-SEC

echo "Usuários criados com sucesso!"
echo "\n ------------------------------------- \n"

echo "Configurando permissões e finalizando..."

chown root:GRUPO-ADM /adm
chown root:GRUPO-VEN /ven
chown root:GRUPO-SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado!"


