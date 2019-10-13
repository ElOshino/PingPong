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
        <%
            // Leemos la variable de sesión 'usuario'
            String usuario = (String) session.getAttribute("usuario");
            // Si las variable de sesión 'validado'
            // y 'usuario' ya habia sido creadadas
            if (validado != null && usuario != null) // Mostramos mensaje de advertencia
            {
                out.println("<p>Usuario o contraseña incorrectos</p>");
            }
            // Si la variable de sesión usuario
            // no ha sido creada
            if (usuario == null) // Instanciamos la variable local 'usuario'
            {
                usuario = "";
            }
            // Borramos la variable de sesión 'usuario'
            session.setAttribute("usuario", null);
        %>
        <form method="post" action="bienvenido.jsp" name="formLogin">
            <input type="text" name="usuario" value="<%=usuario%>"><br>
            <input type="password" name="contrasena"><br>
            <input type="submit" name="enviar" value="enviar">
        </form>
    </body>
