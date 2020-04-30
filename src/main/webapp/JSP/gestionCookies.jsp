<%-- 
    Document   : gestionCookies
    Created on : 29-abr-2020, 19:52:23
    Author     : Francisco_Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="../CSS/cookiesCss.css">
        <title>GESTI&Oacute;N DE COOKIES.</title>
    </head>
    <body>
        
        <%
            String mensaje=null;
            String nombre = request.getParameter("nombre");
            String valor = request.getParameter("valor");
            Cookie cookie = null;
            Cookie[] cookies = request.getCookies();
            //Se comprueba que el array de cookies está vacio.
            if (cookies != null) {
                for (int i = 0; i < cookies.length; i++) {
                    if (cookies[i].getName().equals(nombre)) {
                        cookie = cookies[i];
                        break;
                    }
                }
            }
            
        /**
         * Crear cookies.
         */
            //Se Comprueba si el botón es el de Crear.
            if (request.getParameter("botonCookie").equals("Crear")) { 
                 //Comprobamos que la cookie está vacia, y si está vacia, se crea la cookie.
                if (cookie == null) {
                    cookie = new Cookie(nombre, valor);
                    //Fijamos una hora para la caducidad de la cookie.
                    cookie.setMaxAge(60 * 60);
                    response.addCookie(cookie);
                    mensaje = "Se ha creado la cookie \"" + nombre + "\" con valor \"" + valor + "\"";
                } else {
                    mensaje = "La cookie \"" + nombre + "\" ya existe";
                }
            
            
        /**
         * Visualizar las cookies que hemos creado.
         */
            //Se Comprueba, como en el caso anterior, si es el botón, ahora el de Visualizar.
            } else if (request.getParameter("botonCookie").equals("Visualizar")) {
                    //si la cookie del array tiene el mismo nombre que buscamos, nos la muestra.
                    if (cookie != null) {
                        mensaje = "Esta es la cookie \"" + nombre + "\" con valor \"" + cookie.getValue() + "\"";
                    
                    } else {
                        mensaje = "La cookie \"" + nombre + "\" no existe";
                    }
                
        /**
         * Modificación de una cookies que hayamos creado.
         */
            } else if (request.getParameter("botonCookie").equals("Modificar")) {
                //Volvemos a comprobar si el botón "modificar", como hemo hecho en los casos anteriores.
                    if (cookie != null) {
                        cookie.setValue(valor);
                        response.addCookie(cookie);
                        mensaje = "Se ha modificado la cookie \"" + nombre + " con valor \"" + valor + "\"";
                        
                    } else{
                        mensaje = "La cookie \"" + nombre + "\" no existe";
                    }
                
                
            
         /**
         * Eliminación de una cookies.
         */
            } else if (request.getParameter("botonCookie").equals("Eliminar")) {//Comprobamos si el botón es el de Eliminar
                //Última vez que comprobamos si el botón correcto, en este caso "Eliminar".
                    if (cookie != null) {
                        cookie.setMaxAge(0);
                        response.addCookie(cookie);
                        mensaje = "Se ha eliminado la cookie \"" + nombre;
                        
                    }else{
                        mensaje = "La cookie \"" + nombre + "\" no existe";
                    }
                
            }
            //Para salir enviamos la respuesta al menú inicial donde están las opciones.
            response.sendRedirect("menuCookies.jsp?mensaje=" + mensaje);
        %>

    </body>
</html>
