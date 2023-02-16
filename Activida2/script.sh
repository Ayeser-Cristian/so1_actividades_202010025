#!/bin/bash
read -p "Ingrese su Usuario, por favor :) : " GITHUB_USER


usuarioConsulta=$(curl -s https://api.github.com/users/"$GITHUB_USER")

id_entrada=$(echo $usuarioConsulta | jq -r '.id')

creacion_dato=$(echo $usuarioConsulta | jq -r '.created_at')

echo "Hola $GITHUB_USER. User ID: $id_entrada. Cuenta fue creada el: $creacion_dato."

fecha_actual=$(date +"%Y-%m-%d")

direccion_log="/tmp/$fecha_actual/saludos.log"

mkdir -p "$(dirname "$direccion_log")"

echo "Hola $GITHUB_USER. User ID: $id_entrada. Cuenta fue creada el: $creacion_dato." >> "$direccion_log"