<%-- 
    Document   : conversorMonedas
    Created on : 25-abr-2020, 21:28:00
    Author     : Francisco_Antonio
--%>

<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        float monedaorigen = 0;
        float monedadestino = 0;
        
        BufferedReader br;                      
        br = new BufferedReader(new InputStreamReader(System.in));
        %>
        <input type="number" 
        System.out.println("Cuantos dolares tienes?");                  
        monedaorigen = Float.parseFloat(br.readLine());
        
        monedadestino = monedaorigen*tasa;
        System.out.println(monedaorigen + " dolares equivalen a " + monedadestino + " pesos chilenos");
        %>
        
        
    </body>
</html>
