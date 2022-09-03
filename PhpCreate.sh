#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

trap ctrl_c INT

function ctrl_c()
{
	echo -e "\n${redColour}[!] Saliendo...\n${endColour}"

	rm ut.t* 2>/dev/null
	tput cnorm; exit 1
}
    echo -ne "${grayColour}[${endColour}${purpleColour}*${endColour}${grayColour}]${endColour}${turquoiseColour} Ingrese Nombre De Proyecto: ${endColour}" && read Proyecto
    echo -e "${grayColour}[${endColour}${purpleColour}!${endColour}${grayColour}]${endColour}${turquoiseColour} Generando Proyecto Porfavor Espere...${endColour}"
    sleep 5
    for i in $(seq 1 80); do echo -ne "${redColour}-"; done; echo -ne "${endColour}\n"

    mkdir $Proyecto
    cd $Proyecto

    echo -ne "${grayColour}[${endColour}${purpleColour}*${endColour}${grayColour}]${endColour}${turquoiseColour} Proyecto ${endColour}${redColour}|php[1]${endColour} ${redColour}html[2]|${endColour} ${turquoiseColour}Seleccione -> ${endColour}" && read Proyecto
    if [ "$(echo $Proyecto)" == "1" ]; then
    echo -e "${grayColour}[${endColour}${purpleColour}!${endColour}${grayColour}]${endColour}${turquoiseColour} Generando Proyecto $(echo $Proyecto.php) ...${endColour}"
        touch "index.php"
    fi

    if [ "$(echo $Proyecto)" == "2" ]; then
    echo -e "${grayColour}[${endColour}${purpleColour}!${endColour}${grayColour}]${endColour}${turquoiseColour} Generando Proyecto $(echo $Proyecto.html) ...${endColour}"
        touch "index.html"
    fi

    mkdir assets images
    cd assets

    mkdir css js
    touch css/style.css js/app.js

    cd ..
