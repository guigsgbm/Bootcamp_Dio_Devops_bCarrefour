#!/bin/bash

useradd guest1 -c "Guest" -s /bin/bash -m -p $(openssl passwd -5 123)
passwd guest1 -e

echo "Usuário Criado !"

