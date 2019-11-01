<%--
    Document   : Header
    Created on : 8/05/2019, 05:27:51 PM
    Author     : Santiago Alfonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<header>

    <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Inicio Admin </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link active" href="registroEstudiante.jsp">Resgistrar Estudiante <span class="sr-only">(current)</span></a>
                
                <a class="nav-item nav-link" href="estudianteCtrl" >Listar Estudianes</a> 
               
                <a class="nav-item nav-link" href="login.jsp">Cerrar sesión</a>
            </div>
        </div>
    </nav>
</header>
