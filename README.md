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
### 1. Calcula el último dígito de un factorial.
*Realizar una página mediante páginas JSP una aplicación que introduzca un numero entero y calcule el último dígito de su factorial,      por ejemplo, se introduce 4 y se tiene que visualizar 4 ya que el factorial de 4 es 24. El número se introduce en un fichero HTML y      se interpreta en un JSP.*

Tarea pendiente de realizar.

### 2. Calculadora de conversión entre divisas.
*Realizar una página mediante JSP que sea una calculadora de conversión entre divisas. Podremos realizara la conversión entre euros,      dolares, yenes y libras esterlinas en ambos sentidos, es decir por ejemplo, de euros a dolares y de dolares a euros. En un documento    HTML introduciremos la cantidad y en que moneda está y a la que lo queremos pasar. En una página JSP se interpretará lo que se ha        enviado y se mostrará el resultado.*

Tarea pendiente de realizar.

### 3. Desglose euros en billetes y monedas.
*Realizar una página JSP que desglose una cantidad de euros en forma ideal en billetes y monedas. La cantidad se introduce en un HTML    y se interpreta y visualiza en un JSP.*

Tarea pendiente de realizar.

### 4. Gestión de Cookies.
*Realizar una aplicación para la gestión de cookies. Esta aplicación constará de una página JSP con dos textField, uno para introducir el nombre de la cookie y otro para el valor, si fuese necesario. Además dispondrá de un conjunto de botones para realizar las acciones: crear una nueva, visualizar el contenido de una existente, modificar el valor de una existente, eliminar una ya existente y vuelta al menú principal. Por cada una de las operaciones se mostrará un mensaje informativo de lo que ha ocurrido.*

Se realiza aplicación para la gestión de cookies con dos archivos. Uno *menucookies.jsp* en el que se muestra el menú para realizar todas las operaciones solicitadas: crear una nueva, visualizar el contenido de una existente, modificar el valor de una existente, eliminar una ya existente y un botón "*Menú*" que dirige al Menú principal. Y otro *gestionCookies.jsp* en el que se realizan todas las operaciones necesarias para que la aplicación funciones.

### 5. Gestión de Sesiones.
*Realizar una aplicación para la gestión de sesiones. Esta aplicación constará de una página JSP con cuatro textField, uno para introducir el nombre de la sesión y los otros tres para el valor, si fuese necesario. El valor de la sesión será: nombre, fecha de nacimiento y sueldo en euros. Además dispondrá de un conjunto de botones para realizar las acciones: crear una nueva, visualizar el contenido de una existente, modificar el valor de una existente, eliminar una ya existente y vuelta al menú principal. Por cada una de las operaciones se mostrará un mensaje informativo de lo que ha ocurrido.*

Se realiza aplicación para la gestión de sesiones en un archivo denominado gestionSesion.jsp. Solo crea la sesión. No está terminado.

### 6. Contador de cookies.
*Realizar una aplicación para contar el número de visitas a la página mediante cookies. Esta aplicación constará de un Servlet donde se visualizará la siguiente información cuando la cookie que controla el contador no exista: caducidad y nombre de la cookie y por supuesto el número de veces que se ha visitado la página, que en este caso será 1. Para las demás veces aparecerá solamente el número de veces que se ha visitado la página. También existirán unos botones con las opciones: recargar la página, resetear la cookie y volver al menú principal.*

Se realiza aplicación en un archivo denominado contadorVisitasCookies.jsp. en el que se muestras las veces en las que se visualiza las veces que se ha visitado y con la opción de eliminar la cookie y recargarla. Mostrando además el nombre de la cookie que se crea, el tipo y la versión.

### 7. Contador de visitas Sesiones.
*Realizar una aplicación para contar el número de visitas a la página mediante sesiones. Esta aplicación constará de un Servlet donde se visualizará la siguiente información cuando la sesión que controla el contador no exista: id, nombre y fecha de creación de la sesión y por supuesto el número de veces que se ha visitado la página, que en este caso será 1. Para las demás veces aparecerá solamente el número de veces que se ha visitado la página. También existirán unos botones con las opciones: recargar la página, resetear la sesión y volver al menú principal.*

Se realiza la aplicación en un archivo denominado contadorVisitasSesiones.jsp, en el que se visualiza las veces que visitas la sesion. Esta aplicación no tiene estilos y está pendiente de terminar.

### 8. Página de registro.
*"Realizar una aplicación web siguiendo el MVC. Los campos que empiezan por asterisco son obligatorios. La fecha hay que validarla en el servidor.*

*Cuando introducimos la información y algún dato no es correcto aparecerá el formulario anterior con los datos introducidos y un aviso con los errores cometidos. Ahora bien, la comunicación de los errores se realizará mediante iconos al lado de cada campo erróneo. El icono de error será una "X" en rojo y el de acierto un check en verde.*

*Cuando todos los datos se introduzcan correctamente aparecerá una pantalla visualizando los datos obtenidos."*
Se crea en el index.html, dentro del apartado JavaScript Pages el acceso a registro.jsp denominandolo "Página de Registo".

![Página de Registro](img/formularioRegistro.png)

- Se crea archivo registro.jsp que es un formularios el que se pide varios datos.
- Se crea el servlet registro.java en el que se realizan y muestran los datos que se rellenan en el archivo jsp.
- Se queda pendiente la validación de los datos del formalario.
- Se modifica el archivbo estiloFormComplejo.css con los estilos que se aplicarán en el apartado  de registro.

