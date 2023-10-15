# Pato
termómetro inteligente que permite mandar datos a una web app para xlab

Hola deben de hacer un git clone a mi repositorio y deben de guardar la carpeta de lo han estado haciendo.
una vez que tengan todos los archivos guardados tendran que instalar dependencias.

1.- deben de descargar Node.js o si quieren un entorno más robusto pueden descargar anaconda o miniconda que trae diferentes herramientas Node.js lo deben de decargar de la pagina principal y seleccionar su computadora, reinician su computadora.

Una vez que tienen Node.js y que hicieron un git clone al repositorio tendrán todos lo archivos en una carpeta de su computadora, les recomiendo descargar github Desktop si es que queremos trabajar por ahí es super amigable para mandar los commits y los push que lo podemos checar luego presencial si tienen dudas, para utilizar los archivos que subí no es necesario tener github desktop.

- cuando tengan la la carpeta deben de abrir su terminal (mac) y dirigirse a la ubicación de la carpeta con comandos cd y la ruta, si les aparecen los archivos package.json y package-lock.json deben de tener sequelize en case de que no lo instalan con el siguiente comando.

    npm install sequelize
    npm install sqlite3 (opcional)

2.- Para utilizar la app web de flask deben de crear un virtual environment en su terminal para que no exista problemas con compatibilidad de las librerías, para esto deben de tener descargado pip para poder hacer descargas desde ahí

    - sudo easy_install pip (mac) (en caso que no tengan descargado pip)
    - pip install virtualenv 

    Es necesario que tengan python instalado que supongo que ya tienen.


3.- Para la siguiente parte es importante que en su terminal ya este en un entorno virtual o (venv) que lo deben de ver al inicio de la ruta en donde se encuentran, si no han hecho esto es necesario para el siguiente paso.
existe una carpeta llamada requirements.txt la cual deben de instalar su contenido, deben de utilizar el siguiente comando en su bash o terminal

    - primero se diriguen a su terminal y la ruta de su carpeta/proyecto en mi caso es Luis/Documents/ProyectoIntegrador/pato

    - Una vez que esten ahí se mueven a la carpeta de /flask_prueba 

        ahí en la terminal igualmente pegan el siguiente comando pip install -r requirements.txt

        en caso que exista alguna incompatibilidad utilizan el siguiente comando.
        
        pip3 freeze | xargs pip3 uninstall -y

        Si lo utilizaron deben de volver a instalar requirements.txt


4.- Para el cuarto paso es hacer las instancias de flask y darle run al localhost.

En la misma carpeta de flask_prueba en el documento de requirements.txt no debe de salir ninguna librería subrayada o que no se encontro es por eso que instalamos requirements si ya hicieron el paso anterior muchas veces VS se traba y pueden utilizar shift + cmd + p y en las opciones de despliegue reload window hasta que no esten subrayadas las librerías o cierran y abren VScode.

5.- RUN a flask

    En la terminal seguimos en la ruta de flask_prueba en donde utilizaremos los siguientes comandos para pueda funcionar el localhost de flask

    - export FLASK_APP=main.py

    main.py es el archivo en donde esta declarada la app de flask, para verificar que si esta correctamente instanciado utilizan

    - echo $FLASK_APP

    y debe de salir como respuesta main.py
 
    (ejemplo)
    (
        (venv) larome@MacBook-Pro-de-Luis-9 flask_prueba % echo $FLASK_APP
        main.py
    )
    - Para empezar a cargar la aplicación de flask utilizan el comando.

    - flask run

    y debe de cargar localhost:5000 que es su puerto o en su navegador teclean localhost:5000 y deben de ver la app viva.

    En su terminal se debe de ver algo así.

    (ejemplo)

    (
        (venv) larome@MacBook-Pro-de-Luis-9 flask_prueba % flask run
        * Serving Flask app 'main.py'
        * Debug mode: off
        WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
        * Running on http://127.0.0.1:5000
        Press CTRL+C to quit
    )



