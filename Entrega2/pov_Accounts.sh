#!/bin/sh
CHEKFILE = "~/Entrega2/povoar.sql"
if [ ! -f "$CHECKFILE" ];
then
    touch povoar.sql
    echo "PRAGMA foreign_keys = ON;" >> povoar.sql
    echo " " >> povoar.sql
fi

echo "=== Povoando Country ==="
echo -n "Inicias do pais:  "
read countryInitials
echo -n "Nome do Pais: "
read countryName

echo "INSERT INTO Country VALUES ('$countryInitials','$countryName');" >> povoar.sql

echo "=== Povoando Client ==="
echo -n "ID Client: "
read clientID
echo -n "Ano de nascimento:  "
read yearB
echo -n "Mês de nascimento: "
read monthB
echo -n "Dia de nascimento: "
read dayB
echo -n "Nome: "
read clientName
echo -n "Email: "
read  clientEmail
echo -n "Password :"
read clientPassword
echo -n "Iniciais do pais: "
read clientCountry

echo "INSERT INTO Client VALUES ($clientID, '$yearB-$monthB-$dayB','$clientName', '$clientEmail', '$clientPassword', '$clientCountry');" >> "povoar.sql"

echo "=== Povoando Account ==="
echo -n "Id account: "
read accountID
echo -n "type: "
read type
echo -n "screen number: "
read screenNumber
echo -n "price: "
read price

echo "INSERT INTO Account VALUES ($accountID, '$type', '$screenNumber', '$price', $clientID);" >> "povoar.sql"

echo "==== Povoando Method ===="

echo -n "Metodo de pagamento : "
read method

echo "INSERT INTO Payment VALUES('$method');" >> povoar.sql

echo "=== Povoando User ==="
echo -n "Id do usuario: "
read userID
echo -n "Nome do usuario: "
read userName

echo "INSERT INTO User VALUES($userID, '$userName', $clientID);" >> povoar.sql
