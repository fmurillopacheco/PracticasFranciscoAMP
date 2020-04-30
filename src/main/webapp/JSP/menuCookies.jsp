<%-- 
    Document   : gestionDeCookies
    Created on : 29-abr-2020, 19:17:23
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
<div>
            <h1>GESTI&Oacute;N DE COOKIES.</h1>
            <form action="gestionCookies.jsp" method="post">

                <fieldset>
                    <label></label><input  name="nombre" type="text" placeholder="Nombre de la cookie:" required><br><br>
                    <label></label><input  name="valor" type="text" placeholder="Valor de la cookie:"><br>
                    <br>
                    <br>
                    <button type="submit" name="botonCookie" value="Crear">Crear</button>
                    <button type="submit" name="botonCookie" value="Visualizar">Visualizar</button>
                    <button type="submit" name="botonCookie" value="Modificar">Modificar</button>
                    <button type="submit" name="botonCookie" value="Eliminar">Eliminar</button>
                    <button type="submit" name="botonCookie" value="Menu"><a id="menuCookies" href="<%=request.getContextPath()%>/index.html">Menú</a> </button>
                    <br>
                    <br>
                    <%
                        String mensaje;
                        if (request.getParameter("mensaje") != null) {
                            mensaje = request.getParameter("mensaje");
                        } else {
                            mensaje = "";
                        }
                    %>
                </fieldset>
            </form>
            <p><%=mensaje%></p>
        </div>
    </body>
</html>
