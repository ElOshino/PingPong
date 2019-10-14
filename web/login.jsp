<%-- 
    Document   : login
    Created on : 12/10/2019, 08:55:52 PM
    Author     : Santiago
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%
// Leemos la variable de sessión 'validado'
    Boolean validado = (Boolean) session.getAttribute("validado");
// Si la variable de session 'valiadado' ya
// ha sido creada o el valor es 'true'
    if (validado != null && validado.booleanValue()) // Redireccionamos a la página bienvenido.jsp
    {
        response.sendRedirect("bienvenido.jsp");
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Login</title>
    </head>
    <body>
        <form action="login" method="POST">
            <input type="text" name="user" value="usuario" />
            <input type="password" name="password" value="contraseña" />
            <input type="submit" value="Enviar" />
        </form>
    </body>
