# Universidad de San Carlos de Guatemala
# Sistemas Operativos 1, Actividad 3
## Ayeser Cristián Oxlaj Juárez - 202010025

# Problema detectado
Se detecto un "Bug" en la aplicación web, el cual consiste en que al momento de levanatar la imagen de la aplicación en docker y refrescar la página este nos da un error 404, lo que significa que el servidor no pudo encontrar el recurso que se solicitó, es decir, cuando un usuario intenta acceder a una página web o archivo que no existe. 
# Análisis
Al analizar el problema se detecto que el problama proviene de la imagen de `NGINX`, el cual es un servidor web y de proxy inverso de código abierto que se utiliza para manejar el tráfico de red, incluidos los sitios web HTTP, HTTPS, TCP y UDP.

Por lo cual nos dirigimos al archivo `nginx.Dockerfile` para detectar el problema.
# Solución del problema

Luego de realizar el análisis se detecto que el error era que no existía una configuración para el servidor web Nginx dentro del contenedor docker, por lo cual se procedio a agregarlo con los siguientes comandos:

- `COPY nginx.conf /etc/nginx/conf.d/default.conf` :  copia un archivo de configuración de Nginx llamado "nginx.conf" desde el directorio actual (más abajo se detalla este archivo.)
- `EXPOSE 80`:  Esto indica que el contenedor estará escuchando en el puerto 80 y que los clientes podrán acceder a la aplicación a través de este puerto
- `CMD ["nginx", "-g", "daemon off;"]`: este comando ejecuta el servidor web Nginx y establece el modo "daemon off" para que el proceso no se ejecute en segundo plano y se mantenga en primer plano.

Por último, como se menciono en el primer punto se creo un nuevo archivo (nginx.conf") para la configuración del servidor web Nginx, a continuación se detalla lo que contiene el archivo:

- `server`: es una directiva que define un bloque de configuración para un servidor en particular.

- `listen 80`: indica que el servidor está escuchando en el puerto 80.

- `server_name localhost`: especifica el nombre del servidor, en este caso es "localhost".

- `root /usr/share/nginx/html`: define la ruta en la que se encuentran los archivos servidos por el servidor web. En este caso, los archivos están ubicados en "/usr/share/nginx/html".

- `index index.html`: especifica el nombre del archivo de índice predeterminado. En este caso, el archivo de índice es "index.html".

- `location /`: indica que se aplicará esta configuración a todas las solicitudes que lleguen al servidor.
x
- `try_files $uri $uri/ /index.html`: es una directiva que indica al servidor que intente servir el archivo solicitado ($uri) y, si no puede encontrarlo, intente servir una ruta que termine con "/" ($uri/). 

Con lo mencionado anteriormente se logro darle solución al problema. Para ver el proyecto completo ingrese al siguiente link (Veríficar si aún no se ha solucionado el bug, sino guíarse con el presente repositorio): https://github.com/susguzman/so1_containers .