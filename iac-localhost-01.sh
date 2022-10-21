#!/bin/bash

echo "Creating directories"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating users groups"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users"

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -6 123)
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -6 123)
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -6 123)
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -6 123)
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -6 123)

echo "Specifying directory permissions"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "End..."
echo "----------"
