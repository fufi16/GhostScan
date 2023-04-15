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

Una vez que hayas instalado estas dependencias necesarias para correr el codigo, puedes descargar Ghostscan y ejecutarlo en tu terminal.
    
    git clone https://github.com/fufi16/GhostScan.git
    
Una vez instalado, para ejecutar GhostScan deberemos irnos a la carpeta que contiene la descarda

    cd GhostScan
    
Y una vez ahí solo ejecutaremos el siguiente comando y si todo ha salido bien GhostScan se pondrá en marcha

    ./ghostscan.sh
    
  </body>
</html>
