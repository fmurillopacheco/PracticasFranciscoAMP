<%-- 
    Document   : registro
    Created on : 04-may-2020, 22:29:31
    Author     : Francisco_Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../CSS/estiloFormComplejo.css">
        <title>P&aacute;gina de registro</title>
    </head>
    <body>
        <div id="Titulo">Formulario de Registro.</div>
        <div id="container">
            <p id="Titulo1">Informaci&oacute;n personal: </p>
            <form action="../Registro" method="post">
                <fieldset id="personal">
                    <input name="Nombre" type="text" placeholder="Nombre: "><br><br>
                    <input name="Apellidos" type="text" placeholder="Apellidos: "><br><br>
                    
                    <label class="radio">Sexo: <br><input type="radio" name="sexo" value="hombre" checked> Hombre.</label><br>
                    <label class="radio"><input type="radio" name="sexo" value="mujer"> Mujer.</label><br>
                    <label class="radio"><input type="radio" name="sexo" value="ns"> Prefiero no decirlo.</label><br>
                    <label>Fecha de Nacimiento: </label><input name="fechnac" type="date"><br>
                </fieldset>
                
                <p id="Titulo1">Datos de Acceso: </p>
                <fieldset id="Acceso">
                    <input name="usuario" type="email" placeholder="Usuario: "><br>
                    <input name="passwd" type="password" placeholder="Contraseña: "><br>
                    <br>
                </fieldset>
                
                <p id="Titulo1">Informaci&oacute;n general: </p>
                
                <label>Preferencias:</label>
                <br>
                <fieldset id="preferecias">
                    <label><input type="checkbox" name="preferencias" value="deportes"> Deportes. </label><br>
                    <label> <input type="checkbox" name="preferencias" value="comida"> Comida. </label><br>
                    <label> <input type="checkbox" name="preferencias" value="lectura"> Lectura. </label><br>
                    <label> <input type="checkbox" name="preferencias" value="cine"> Ir al Cine. </label><br>
                    <label> <input type="checkbox" name="preferencias" value="viajar"> Viajar. </label><br>
                </fieldset>
                <br><br>
                <button type="submit" name="enviar" value="Enviar">Enviar</button>
                <button type="reset" name="limpiar" value="Limpiar">Limpiar</button>
            </form>
        </div>
    </body>
</html>
