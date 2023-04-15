<body>
    <h1>Ghostscan</h1>
    <p>GhostScan es una herramienta de escaneo de puertos capaz de evadir los métodos de defensa utilizados por los sistemas de seguridad. Está dividida en tres secciones: la primera se encarga del descubrimiento de hosts, la segunda escanea los puertos abiertos de una dirección IP y la tercera nos proporciona información sobre los servicios que están corriendo en esos puertos abiertos. Esto nos permite realizar una exploración exhaustiva de la red sin ser detectados. Es importante tener en cuenta que el escaneo de puertos puede ser ilegal sin el consentimiento previo de la persona o empresa propietaria de la red. Por lo tanto, es responsabilidad del usuario utilizar esta herramienta de manera ética y legal. No nos hacemos responsables del mal uso de esta herramienta.</p>

<h2>Instalación</h2>
Para poder utilizar Ghostscan, necesitas tener instaladas las siguientes dependencias:
    
    sudo apt-get update
    sudo apt-get install figlet
    sudo apt-get install lolcat
    sudo apt-get install nmap
    sudo apt-get install netcat
    sudo apt-get install bash
    git clone https://github.com/fufi16/GhostScan.git

<h2>Ejecución</h2>
    
Una vez instalado todo lo necesario, para ejecutar GhostScan deberemos irnos a la carpeta que contiene la descarda y a continuación ejecutar el script.

    cd GhostScan
    ./ghostscan.sh
    
  </body>
</html>
