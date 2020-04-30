<%-- 
    Document   : gestionSesion
    Created on : 29-abr-2020, 20:48:53
    Author     : Francisco_Antonio
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../CSS/cookiesCss.css">
        <title>Gesti&oacute;n de Sesiones.</title>
    </head>
    <body>
<%
            String nomsesion = request.getParameter("nomsesion");
            String nombre = request.getParameter("nombre");
            String fechnac = request.getParameter("fechnac");
            String sueldo = request.getParameter("sueldo");
            
            String mensaje = "";
            HttpSession sesion = request.getSession(); //crear sesión
            if (request.getParameter("botonSesion") != null) {
                if (request.getParameter("botonSesion").equals("Crear")) {
                    if (nombre.length() == 0) {
                        mensaje = "Debe introducir un nombre de sesión.";
                    } else {
                        session.setAttribute(nomsesion,nombre);
                        mensaje = "Creada la sesion:" + nomsesion + ", con los valores: " + nombre +" "+ fechnac + " "+sueldo;
                    }
                } else if (request.getParameter("botonSesion").equals("Visualizar")) {
                    mensaje = "El nombre de la sesion es " + nomsesion + " y el valor es " + session.getAttribute(nombre)+session.getAttribute(fechnac)+session.getAttribute(sueldo);//obtiene el atributo(valor) de la sesion
                } else if (request.getParameter("botonSesion").equals("Modificar")) {
                    session.setAttribute(nomsesion,nombre);
                    mensaje = "Se ha modificado la sesion " + nomsesion + " y el valor es " + session.getAttribute(nombre)+session.getAttribute(fechnac)+session.getAttribute(sueldo);
                } else if (request.getParameter("botonSesion").equals("Eliminar")) {
                    session.removeAttribute(nomsesion);
                    mensaje = "Se ha eliminado la sesión " + nomsesion + " con valor " + session.getAttribute(nombre)+session.getAttribute(fechnac)+session.getAttribute(sueldo);
                }
            }
        %>
        <div>
            <h1>GESTI&Oacute;N DE SESION</h1>
            <form action="gestionSesion.jsp" method="post">

                <fieldset>
                    <label></label><input  name="nomsesion" type="text" placeholder="Nombre de la sesión:"><br><br>
                    <label></label><input  name="nombre" type="text" placeholder="Nombre: "><br><br>
                    <label></label><input  name="fechnac" type="date" placeholder="Fecha de Nacimiento:"><br><br>
                    <label></label><input  name="sueldo" type="text" placeholder="Sueldo: "> € <br><br>
                    <br>
                    <br>
                    <button type="submit" name="botonSesion" value="Crear">Crear</button>
                    <button type="submit" name="botonSesion" value="Visualizar">Visualizar</button>
                    <button type="submit" name="botonSesion" value="Modificar">Modificar</button>
                    <button type="submit" name="botonSesion" value="Eliminar">Eliminar</button>
                    <button type="submit" name="botonSesion" value="Menu"><a href="<%=request.getContextPath()%>/index.html">Menú</a> </button>
                    <br>
                    <br>



                </fieldset>

            </form>
            <p><%=mensaje%></p>
        </div>
    </body>
</html>
