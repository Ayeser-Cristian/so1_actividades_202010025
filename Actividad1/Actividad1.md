# 1. Kernel - Sistemas Operativos
El kernel es el núcleo de un sistema operativo y, por tanto, la interfaz entre el software y el hardware. Es por ello por lo que se está usando continuamente. En pocas palabras: el kernel es el corazón de un sistema operativo.

El kernel se encuentra en el centro del sistema operativo y controla todas las funciones importantes del hardware, ya sea un sistema Linux macOS o Windows, un smartphone, un servidor, una virtualización como KVM o cualquier otro tipo de ordenador.
## 1.2 Tipos de Kernel
Existen diversos tipos de kernel en donde cada uno de ellos funciona a su manera y cumple diferentes características, por medio de las cuales se pueden diferenciar cuatro de ellos :
#### 1.2.1 ***Monolítico:*** 
 Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Está programado de forma no modular, y tiene un rendimiento mayor que un micronúcleo. Sin embargo, cualquier cambio a realizar en cualquier servicio requiere la recopilación del núcleo y el reinicio del sistema para aplicar los nuevos cambios.

Un sistema operativo con núcleo monolítico concentra todas las funcionalidades posibles (planificación, sistema de archivos, redes, controladores de dispositivos, gestión de memoria, etc) dentro de un gran programa. Deberá ser recompilado por completo al añadir una nueva funcionalidad y un error en una rutina puede propagarse a todo el núcleo. 

![](https://www.itrelease.com/wp-content/uploads/2018/07/Monolithic-architecture-diagram.jpg)

Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.
#### 1.2.2 ***Microkernel:*** 
Mejor conocidos como micronúcleos, estos son aquellos que son catalogados como mejores en comparación con el kernel monolítico, debido a que el mismo cumple una serie de pequeñas abstracciones mucho más simples que las comúnmente observadas en el kernel monolítico, y su función principal es utilizar diversas aplicaciones para facilitar su funcionalidad. 

El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.

![](https://static.javatpoint.com/operating-system/images/microkernel-in-operating-system.png)
#### 1.2.3 ***Híbrido:*** 
La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. 

A diferencia de los núcleos monolíticos tradicionales, los controladores de dispositivos y las extensiones al sistema operativo se pueden cargar y descargar fácilmente como módulos, mientras el sistema continúa funcionando sin interrupciones. También, a diferencia de los núcleos monolíticos tradicionales, los controladores pueden ser prevolcados (detenidos momentáneamente por actividades más importantes) bajo ciertas condiciones. Esta habilidad fue agregada para gestionar correctamente interrupciones de hardware, y para mejorar el soporte de Multiprocesamiento Simétrico.

![](https://images.slideplayer.com/35/10413607/slides/slide_32.jpg)
#### 1.2.4 ***Exonúcleo:*** 
También conocidos como sistemas operativos verticalmente estructurados, representan una aproximación radicalmente nueva al diseño de sistemas operativos. La idea subyacente es permitir que el desarrollador tome todas las decisiones relativas al rendimiento del hardware. Los exonúcleos son extremadamente pequeños, ya que limitan expresamente su funcionalidad a la protección y el multiplexado de los recursos. Se llaman así porque toda la funcionalidad deja de estar residente en memoria y pasa a estar fuera, en librerías dinámicas.


![](https://zhu45.org/images/microkernels.png)




# 2. User vs Kernel Mode
Un procesador en una computadora que ejecuta un Sitema Operativo tiene dos modos diferentes: modo de usuario y modo kernel .

El procesador cambia entre los dos modos según el tipo de código que se esté ejecutando en el procesador. Las aplicaciones se ejecutan en modo usuario y los componentes principales del sistema operativo se ejecutan en modo kernel. Si bien muchos controladores se ejecutan en modo kernel, algunos controladores pueden ejecutarse en modo de usuario.
## 2.1  Modo usuario
Cuando una aplicación informática se está ejecutando, está en el modo de usuario. Algunos ejemplos son la aplicación de Word, PowerPoint, leer un archivo PDF y navegar por Internet.
 
Los programas de modo de usuario tienen menos privilegios que las aplicaciones de modo de usuario y no se les permite acceder a los recursos del sistema directamente. Por ejemplo, si una aplicación en modo de usuario desea acceder a los recursos del sistema, primero deberá pasar por el kernel del sistema operativo mediante llamadas al sistema. 

## 2.2 Modo Kernel
Un núcleo es un programa de software que se utiliza para acceder a los componentes de hardware de un sistema informático. Kernel funciona como un software de middleware para hardware y software de aplicación/programas de usuario. El modo Kernel generalmente se reserva para funciones confiables de bajo nivel del sistema operativo.

 Por lo tanto, es el programa más privilegiado, a diferencia de otros programas, puede interactuar directamente con el hardware. Cuando los programas que se ejecutan en modo de usuario necesitan acceso al hardware, por ejemplo, una cámara web, primero tiene que pasar por el núcleo mediante una llamada al sistema y, para llevar a cabo estas solicitudes, la CPU cambia del modo de usuario al modo de núcleo en el momento de la ejecución. Después de completar finalmente la ejecución del proceso, la CPU vuelve a cambiar al modo de usuario .

![](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCQWgegF-TH3bz6upNBvqF26Ekc5qIRPSuyQD_CBj_Ypooq00huKIDi-d9TwZvXZcr0Ic&usqp=CAU) 

 ## 2.3 Tabla Comparativa
 
 | Modo Usuario  | Modo Kernel  | 
| :------------ |:---------------:| 
|  El programa de aplicación se ejecuta y se inicia. | El programa tiene acceso directo y sin restricciones a los recursos del sistema. |
| El modo de usuario se considera como el modo esclavo o el modo restringido. | El modo Kernel es el modo del sistema, el modo maestro o el modo privilegiado. |  
| Todos los procesos obtienen un espacio de direcciones virtuales separado. | Todos los procesos comparten un único espacio de direcciones virtuales. |   
| Necesita acceder a los programas del kernel, ya que no puede acceder a ellos directamente |  Puede acceder tanto a los programas del usuario como a los programas del kernel, no hay restricciones |  
| Tiempo; el bit de modo del modo de usuario es 1. |El bit de modo de kernel-mode es 0. |  
| Solo puede hacer referencias a la memoria asignada para el modo de usuario.  | Es capaz de hacer referencia a ambas áreas de memoria. |
| Es un modo de visualización estándar y típico, lo que implica que la información no puede ejecutarse por sí sola ni hacer referencia a ningún bloque de memoria; necesita una interfaz de protocolo de aplicación (API) para lograr estas cosas.  |Puede hacer referencia a cualquier bloque de memoria en el sistema y también puede dirigir la CPU para la ejecución de una instrucción|

![](https://www.fastweb.it/var/storage_feeds/cms20/media/fwb_wbce_cms20_fwplus/bcf/bcfec122af48c7cc9c8181f22ec0e64e/Kernel_Layout.svg.png)


