<%-- 
    Document   : contadorVisitasSesiones
    Created on : 30-abr-2020, 0:42:31
    Author     : Framcisco_Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        int contador = 0;
        String mensajeVisitas = "NUMERO DE VISITAS RECIBIDAS:  ";
        HttpSession sesion = request.getSession(); //crear sesión
        sesion.setAttribute("contadorVisitas", 1);
        if (request.getParameter("botonSesion") != null) {
            if(request.getParameter("botonSesion").equals("Recargar")){
                contador++;
                sesion.setAttribute("contadorVisitas", 1+contador);
                mensajeVisitas += ""+session.getAttribute("contadorVisitas");
                
            }
            if (request.getParameter("botonSesion").equals("Eliminar") && request.getParameterValues("Eliminar")!=null) {
                sesion.removeAttribute("contadorVisitas");
                 mensajeVisitas = "Se ha eliminado la sesión";
                //sesion.invalidate();
            }
        }
    %>
    <body>
        <h1>CONTADOR DE VISITAS COOKIES</h1>
        <form action="contadorVisitasSesiones.jsp" method="post">

            <fieldset>
                <%=mensajeVisitas%>

                <br>
                <br>

                <button type="submit" name="botonSesion" value="Recargar"><a id="menuCookies" onclick="myFunction()">Recargar</a> </button>
                <input type="checkbox" name="botonSesion" value="Eliminar">Eliminar</input>
                <button type="submit" name="botonSesion" value="Menu"><a id="menuCookies" href="<%=request.getContextPath()%>/index.html">Menú</a> </button>
                <br>
                <br>

            </fieldset>

        </form>
    </body>
</html>
