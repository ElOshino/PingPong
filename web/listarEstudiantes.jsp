<%-- 
    Document   : listarEstudiantes
    Created on : 29/10/2019, 02:08:38 PM
    Author     : Oshin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Estudiantes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <!-- Latest compiled and minified CSS -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <title>Lista estudiantes</title>
    </head>

    <%

        List<Estudiantes> estudiantes = new ArrayList<>();
        if (request.getAttribute("estudiantes") != null) {
            estudiantes = (List<Estudiantes>) request.getAttribute("estudiantes");
        }
        String mensaje = null;
        if (request.getSession().getAttribute("mensaje") != null) {
            mensaje = (String) request.getSession().getAttribute("mensaje");
        }
    %>

    <script>
        <% if (mensaje != null) {%>
        alert("<%= mensaje%>");
        <%}%>
    </script>
    <% request.getSession().removeAttribute("mensaje");%>
    <body>
        <jsp:include page="Layouts/Header.jsp"></jsp:include>
            <div class="main">
                <h1>Lista de Estidiantes</h1>
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Cedula</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Correo</th>
                            <th scope="col">Nombre de usuario</th>
                            <th scope="col">Telefono</th>
                            <th colspan="3" style="text-align: center">ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                    <% for (Estudiantes estudiantes1 : estudiantes) {%>
                    <tr>
                        <th scope="row"> <%= estudiantes1.getCedula()%> </th> 
                        <td><%= estudiantes1.getNombre()%></td>
                        <td><%= estudiantes1.getApellido()%></td>
                        <td><%= estudiantes1.getCorreo()%></td>
                        <td><%= estudiantes1.getNombreUsuario()%></td>
                        <td><%= estudiantes1.getTelefono()%></td>
                     
                        <td>    
                            <form action="estudianteCtrl" method="get">
                                <input type="hidden" name="idEstudiante" value="<%=estudiantes1.getId()%>">
                                <input type="submit" name="accion" class="btn btn-primary" value="editar">
                            </form>
                        </td>
                        <td>
                            <form action="estudianteCtrl" method="post">
                                <input type="hidden" name="idEstudiante" value="<%=estudiantes1.getId()%>">
                                <input type="submit" name="accion" class="btn btn-danger" value="borrar">
                            </form>
                        </td>
                    </tr>


                    <%}%>
                </tbody>
            </table>





        </div>

        <jsp:include page="Layouts/Footer.jsp"></jsp:include>

    </body>
</html>
