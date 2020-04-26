# PracticasFranciscoAMP
Aplicación llamada PracticasFranciscoAMP

Aplicación en la que se van a realizar distintos ejercicios dentro del desarrollo de la recuperación del Módulo de Desarrollo Web en Entorno Servidor, dentro de la cual de momento se han creado dos apartados Servlets y JSP.

## Apartado Servlets.
Consta de las siguientes aplicaciones o ejercicios:

### 1.Ciclo de Vida:
Muestra por consola que método se ejecuta en cada momento (init,service o destroy). El servlet está dentro del paquete controller (es.albarregas.controller).

### 2. Fecha:
Este ejercicio se mandó el día anterior en el que se muestra un servlet con la siguiente frase: "Hoy es (día de la semana) (numero del mes) de (mes) de (año) y estoy en confinamiento". Yo lo he adaptado y he puesto Hoy es (día de la semana) (mes con letras) (año) y (hora:minutos:segundos), y estoy programando, puteado y en confinamiento".

### 3. Parámetros:
Muestra, en el navegador, los nombres y el valor de los parámetros iniciales (en mi caso 3). Estan mostrados en el mismo orden en el cual se han declarado y también se muestran los parámetros que pasados por la URL.

### 4. Cabeceras:
Se realiza un servlet que devuelve las cabeceras. No he consegido traducir las cabaceras.

### 5. Cliente:
Se crea un servlet que muestra los siguientes parámetros:
- Método de acceso
- URI
- URL
- Protocolo
- ContextPath

### 6. Empaquetado y despliegue:
Esto es otra ejercicio aparte, y se trata de desplegar la aplicación PracticasFranciscoAMP y comprobar su correcto funcionamiento. Para ello hay que seguir los siguientes pasos:
- Copiar la carpeta de tomcat (en nuestro caso al ser Windows la tenemos alojada en el directorio C:)y la pegamos de nuevo en c pero con   otro nombre.
- Creamos un usuario que tenga rol de admin, manager-gui y manager-script
- Cambiamos en el archivo server.xml el puerto 8084 que es el que modificamos la otra vez por el 8085 para que no haya conflictos.
- Apagamos el otro tomcat.
- Iniciamos este tomcat.
- Limpiamos y construimos el proyecto.
- Cambiamos el nombre del .war y le quitamos el -1.0 que es la versión.
- Nos vamos al navegador y navegamos a la pagina localhost:8085 y nos vamos a managerApp e introducimos la contraseña del usuario que     creamos anteriormente.
- En el apartado de desplegar aplicación lo que hacemos es introducir el archivo .war de la carpeta target.
- Para finalizar pulsaríamos en parámetros que debería de habernos salido arriba y lo que hace es abrirnos la aplicación. Ahí deberíamos   comprobar que todo va bien antes de entregar la aplicación.

Se comprueba y se despliega perfectamente.

## Apartado JavaServer Page(JSP).
Consta de las siguientes aplicaciones o ejercicios:

Los siguientes ejercicios se añaden al proyecto PracticasFranciscoAMP en la carpeta "JSP" y las páginas html en la carpeta "html" 

1. Realizar una página mediante páginas JSP una aplicación que introduzca un numero entero y calcule el último dígito de su factorial,      por ejemplo, se introduce 4 y se tiene que visualizar 4 ya que el factorial de 4 es 24. El número se introduce en un fichero HTML y      se interpreta en un JSP.

Tarea sin realizar.

2. Realizar una página mediante JSP que sea una calculadora de conversión entre divisas. Podremos realizara la conversión entre euros,      dolares, yenes y libras esterlinas en ambos sentidos, es decir por ejemplo, de euros a dolares y de dolares a euros. En un documento    HTML introduciremos la cantidad y en que moneda está y a la que lo queremos pasar. En una página JSP se interpretará lo que se ha        enviado y se mostrará el resultado.

Tarea sin realizar.

3. Realizar una página JSP que desglose una cantidad de euros en forma ideal en billetes y monedas. La cantidad se introduce en un HTML    y se interpreta y visualiza en un JSP.

Tarea sin realizar.

