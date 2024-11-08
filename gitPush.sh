#!/bin/bash
#Pon qui tu token
token=""
#Pon tu usuario de github
user=""

#-------------------------------------------------------------------------------------------
#Aqui cambia los valores del parametro y pon tus repositorios.
echo "1-DINT"
echo "2-ANDROID"
echo "3-Acceso a datos"
echo "4-Procesos"
echo "Introduzca opcion numerica:"
read opc
case $opc in
     1)
        repo="DINT-RMB"
        ruta="/home/alumno/workspace/DINT-RMB"
        ;;
    2)
        repo="Android"
        ruta="/home/alumno/AndroidStudioProjects"

        ;;
    3)
        repo="AccesoADatos"
        ruta="/home/alumno/eclipse-workspace"

        ;;
    4)
        repo="Procesos"
        ruta="/home/alumno/IdeaProjects"
        ;;
    *)
        echo "Opción no válida. Debes elegir 1:'DINT',2:'Android',3:'Datos',4:Procesos."
         exit 1
        ;;
esac
#-------------------------------------------------------------------------------------------
echo "--------------------------------------------"
echo "Repositorio elegido: $repo"
echo "--------------------------------------------"
echo "--------------------------------------------"
echo "Token:  $token"
echo "--------------------------------------------"

url="https://$user:$token@github.com/$user/$repo"
echo "--------------------------------------------"
echo "Tu URL: $url"
echo "--------------------------------------------"
cd $ruta
git add .
git commit -m "$(date +"%d-%m-%Y %H:%M")"
git push $url
