# 1. User vs Kernel Mode
Un procesador en una computadora que ejecuta un Sitema Operativo tiene dos modos diferentes: modo de usuario y modo kernel .

El procesador cambia entre los dos modos según el tipo de código que se esté ejecutando en el procesador. Las aplicaciones se ejecutan en modo usuario y los componentes principales del sistema operativo se ejecutan en modo kernel. Si bien muchos controladores se ejecutan en modo kernel, algunos controladores pueden ejecutarse en modo de usuario.
## 1.1  Modo usuario
Cuando una aplicación informática se está ejecutando, está en el modo de usuario. Algunos ejemplos son la aplicación de Word, PowerPoint, leer un archivo PDF y navegar por Internet.
 
Los programas de modo de usuario tienen menos privilegios que las aplicaciones de modo de usuario y no se les permite acceder a los recursos del sistema directamente. Por ejemplo, si una aplicación en modo de usuario desea acceder a los recursos del sistema, primero deberá pasar por el kernel del sistema operativo mediante llamadas al sistema. 

## 1.2 Modo Kernel
Un núcleo es un programa de software que se utiliza para acceder a los componentes de hardware de un sistema informático. Kernel funciona como un software de middleware para hardware y software de aplicación/programas de usuario. El modo Kernel generalmente se reserva para funciones confiables de bajo nivel del sistema operativo.

 Por lo tanto, es el programa más privilegiado, a diferencia de otros programas, puede interactuar directamente con el hardware. Cuando los programas que se ejecutan en modo de usuario necesitan acceso al hardware, por ejemplo, una cámara web, primero tiene que pasar por el núcleo mediante una llamada al sistema y, para llevar a cabo estas solicitudes, la CPU cambia del modo de usuario al modo de núcleo en el momento de la ejecución. Después de completar finalmente la ejecución del proceso, la CPU vuelve a cambiar al modo de usuario .

 ![](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Priv_rings.svg/1200px-Priv_rings.svg.png)

 ## 1.3 Tabla Comparativa
 
 | Modo Usuario  | Modo Kernel  | 
| :------------ |:---------------:| 
|  El programa de aplicación se ejecuta y se inicia. | El programa tiene acceso directo y sin restricciones a los recursos del sistema. |
| El modo de usuario se considera como el modo esclavo o el modo restringido. | El modo Kernel es el modo del sistema, el modo maestro o el modo privilegiado. |  
| Todos los procesos obtienen un espacio de direcciones virtuales separado. | Todos los procesos comparten un único espacio de direcciones virtuales. |   
| Necesita acceder a los programas del kernel, ya que no puede acceder a ellos directamente |  Puede acceder tanto a los programas del usuario como a los programas del kernel, no hay restricciones |  
| Tiempo; el bit de modo del modo de usuario es 1. | El bit de modo de kernel-mode es 0. |  
| Solo puede hacer referencias a la memoria asignada para el modo de usuario. | | Es capaz de hacer referencia a ambas áreas de memoria. |
| Es un modo de visualización estándar y típico, lo que implica que la información no puede ejecutarse por sí sola ni hacer referencia a ningún bloque de memoria; necesita una interfaz de protocolo de aplicación (API) para lograr estas cosas. | |Puede hacer referencia a cualquier bloque de memoria en el sistema y también puede dirigir la CPU para la ejecución de una instrucción|
