#!/bin/bash

# Banner
banner1=$(figlet -f slant "GhostScan" | lolcat)
banner2=$(echo "by fufi" | lolcat)
echo "$banner1$banner2" | lolcat

# Presentación
echo -e "GhostScan es una herramienta de escaneo de puertos capaz de evadir los métodos de defensa utilizados por los sistemas de seguridad. Está dividida en tres secciones: la primera se encarga del descubrimiento de hosts, la segunda escanea los puertos abiertos de una dirección IP y la tercera nos proporciona información sobre los servicios que están corriendo en esos puertos abiertos. Esto nos permite realizar una exploración exhaustiva de la red sin ser detectados. Es importante tener en cuenta que el escaneo de puertos puede ser ilegal sin el consentimiento previo de la persona o empresa propietaria de la red. Por lo tanto, es responsabilidad del usuario utilizar esta herramienta de manera ética y legal. No nos hacemos responsables del mal uso de esta herramienta.\n"

# Pregunta escaneo de red
echo -e "En esta primera sección realizaremos un descubrimiento de hosts dentro de una red\n"
read -p "¿Desea realizar un escaneo de hosts [s/n]?" escaneo_hosts

# Escaneo de red
if [ "$escaneo_hosts" = "s" ]; then
    read -p "Ingrese el prefijo de red que desea escanear (ej:192.168.20):" segmento
    red=$segmento.0/24
    echo "Realizando un escaneo de hosts en la red $red..."
    hosts_nmap=$(nmap -sn -n -PS $red)
    hosts=$(echo "$hosts_nmap"| awk '/report/{print $5}')
    figlet -f slant "Hosts Activos"
    echo "$hosts"
else
    echo "No se realizará un escaneo de hosts"
fi
echo ""

# Pedir dirección IP a escanear
echo -e "A continuación, procederemos a escanear los 20 puertos más comunes en una de las direcciones IP activas dentro de la red. Este proceso puede tardar aproximadamente 5 minutos en completarse.\n"
read -p "Ingrese la dirección IP a escanear: " ip_address

# Variable que guarda los puertos abiertos
open_ports=""

# Contador inicial
start_time=$(date +%s)

# Escaneo 10/20
echo "Escaneando puertos abiertos..."
echo "Escaneando puerto 21"
nc -zv $ip_address 21 >/dev/null 2>&1 && open_ports="$open_ports 21"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 22"
nc -zv $ip_address 22 >/dev/null 2>&1 && open_ports="$open_ports 22"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 23"
nc -zv $ip_address 23 >/dev/null 2>&1 && open_ports="$open_ports 23"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 25"
nc -zv $ip_address 25 >/dev/null 2>&1 && open_ports="$open_ports 25"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 53"
nc -zv $ip_address 53 >/dev/null 2>&1 && open_ports="$open_ports 53"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 80"
nc -zv $ip_address 80 >/dev/null 2>&1 && open_ports="$open_ports 80"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 110"
nc -zv $ip_address 110 >/dev/null 2>&1 && open_ports="$open_ports 110"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 111"
nc -zv $ip_address 111 >/dev/null 2>&1 && open_ports="$open_ports 111"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 135"
nc -zv $ip_address 135 >/dev/null 2>&1 && open_ports="$open_ports 135"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 139"
nc -zv $ip_address 139 >/dev/null 2>&1 && open_ports="$open_ports 139"
echo "10/20 puertos escaneados"

# Descanso
echo "Cooldown..."
sleep $(awk -v min=30 -v max=35 'BEGIN{srand(); print rand()*(max-min)+min}')

# Escaneo 14/20
echo "Escaneando puerto 143"
nc -zv $ip_address 143 >/dev/null 2>&1 && open_ports="$open_ports 143"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 443"
nc -zv $ip_address 443 >/dev/null 2>&1 && open_ports="$open_ports 443"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 445"
nc -zv $ip_address 445 >/dev/null 2>&1 && open_ports="$open_ports 445"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 993"
nc -zv $ip_address 993 >/dev/null 2>&1 && open_ports="$open_ports 993"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "14/20 puertos escaneados"

# Descanso
echo "Cooldown..."
sleep $(awk -v min=25 -v max=30 'BEGIN{srand(); print rand()*(max-min)+min}')

# Escaneo 18/20
echo "Escaneando puerto 995"
nc -zv $ip_address 995 >/dev/null 2>&1 && open_ports="$open_ports 995"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 1723"
nc -zv $ip_address 1723 >/dev/null 2>&1 && open_ports="$open_ports 1723"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 3306"
nc -zv $ip_address 3306 >/dev/null 2>&1 && open_ports="$open_ports 3306"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 3389"
nc -zv $ip_address 3389 >/dev/null 2>&1 && open_ports="$open_ports 3389"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "18/20 puertos escaneados"

#Descanso
echo "Cooldown..."
sleep $(awk -v min=25 -v max=30 'BEGIN{srand(); print rand()*(max-min)+min}')

# Escaneo 20/20
echo "Escaneando puerto 5900"
nc -zv $ip_address 5900 >/dev/null 2>&1 && open_ports="$open_ports 5900"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "Escaneando puerto 8080"
nc -zv $ip_address 8080 >/dev/null 2>&1 && open_ports="$open_ports 8080"
sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
echo "20/20 puertos escaneados"

# Contador final
end_time=$(date +%s)
duration=$((end_time - start_time))
echo "Duración del escaneo de puertos :$duration segundos"

# Imprimir los resultados
figlet -f slant "Puertos abiertos:"
echo "$open_ports" | xargs -n 1 | column -t

# Escaneo de servicios
if [ -n "$open_ports" ]; then
    read -p "¿Desea saber qué servicios estan corriendo en los puertos abiertos? [s/n]: " respuesta
    if [ "$respuesta" = "s" ]; then
        echo "Escaneando servicios de los puertos $open_ports..."
	intro="Estos son los resultados para la IP: $ip_address"
        results=""
        for port in $(echo "$open_ports" | tr ',' ' '); do
            echo "Escaneando servicio del puerto $port..."
            scan_result=$(sudo nmap -sV -n -p $port 192.168.20.128)
            port_number=$(echo "$scan_result" | awk '/open/{print $1}')
            service_name=$(echo "$scan_result" | awk '/open/{print $3}')
            service_version=$(echo "$scan_result" | awk '/open/{for(i=4;i<=NF;i++) printf "%s ", $i}')
            results="${results}Puerto: $port_number - Servicio: $service_name - Versión: $service_version\n\n"
	    sleep $(awk -v min=10 -v max=12 'BEGIN{srand(); print rand()*(max-min)+min}')
        done
	figlet -f slant "Versiones:"
	echo ""
        echo -e "$results"
    fi
    
# Guardar resultados
    read -p "¿Desea guardar los resultados en un archivo de texto? [s/n]: " save_results
    if [ "$save_results" = "s" ]; then
	read -p "Introduzca el nombre del archivo (sin extensión): " file_name
	echo -e "$banner1$banner2\n\n$intro\n$results" > "$file_name.txt"
	echo -e "Resultados guardados en $file_name.txt\n"
    fi
fi

#Despedida
echo "¿¿Gracias por la visita, vuelva pronto!!" | lolcat
