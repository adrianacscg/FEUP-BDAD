echo "=== Povoando Client ==="
echo -n "ID Client: "
read clientID
echo -n"\nAno de nascimento:  "
read yearB
echo -n"\nMês de nascimento: "
read monthB
echo -n "\nDia de nascimento: "
read dayB
echo -n "\nNome: "
read clientName
echo -n "\nEmail: "
read  clientEmail
echo -n "\nPassword :"
read clientPassword
echo -n "\nIniciais do pais: "
read clientCountry

echo "=== Povoando Country ==="
echo -n "Inicias do pais:  "
read countryInitials
echo -n"\nNome do Pais: "
read countryName

echo "=== Povoando Account ==="
echo -n "Id account: "
read accountID
echo -n"type: "
read type
echo -n "screen number: "
read screenNumber
echo -n "price: "
read price
echo "INSERT INTO Client  VALUES($clientID,'$yearB-$monthB-$dayB','$clientName','$clientEmail','$clientPassword','$clientCountry')" >> "povoar.sql"
echo "INSERT INTO Country VALUES('$countryInitials','$countryName')" >> povoar.sql
echo "INSERT INTO '$table' VALUES('$accountID','$type','$screenNumber','$price')" >> "povoar.sql"

