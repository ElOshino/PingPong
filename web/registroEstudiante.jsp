<%-- 
    Document   : registroEstudiante
    Created on : 22/10/2019, 12:31:44 PM
    Author     : Oshin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Latest compiled and minified CSS -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>



        <title>Registro Estudiante </title>
    </head>
    <body>

        <jsp:include page="Layouts/Header.jsp"></jsp:include>

            <div class="container">
                <h1>Registro Estudiante </h1>
                <form method="POST" action="estudianteCtrl" class="needs-validation" novalidate>
                    <input type="hidden" name="accion" value="crear">
                    <div class="form-row">
                        <div class="Cedula">
                            <label for="validationCustom01">Cedula</label>
                            <input type="number" class="form-control" id="validationCustom01" name="cedulaEstu" placeholder="Cedula" required>
                            <div class="valid-feedback">
                                Se ve bien!!
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="validationCustom02">Nombre</label>
                            <input type="text" class="form-control" id="validationCustom02" placeholder="Nombre" name="nombreEstu" required>
                            <div class="valid-feedback">
                                Se ve bien!!
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="validationCustom03">Apellido</label>
                            <input type="text" class="form-control" id="validationCustom03" placeholder="Apellido" name="apellidoEstu" value="dsad" required>
                            <div class="valid-feedback">
                                Se ve bien!!
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="validationCustomUsername">Nombre de usuario</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroupPrepend">@</span>
                                </div>
                                <input type="text" class="form-control" id="validationCustomUsername" placeholder="Nombre de usuario" name="nombreUsu"aria-describedby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    Porfavor es escoja un nombre de usuario!!
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="validationCustomPassword">Contraseña</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroupPrepend">*</span>
                                </div>
                                <input type="password" class="form-control" id="validationCustomPassword" placeholder="Contraseña" name="contrasenaUsu" aria-describedby="inputGroupPrepend" required>
                                <div class="invalid-feedback">
                                    Porfavor es escoja una contraseña de usuario!!
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-3 mb-3">
                            <label for="validationCustom04">Telefono</label>
                            <input type="text" class="form-control" id="validationCustom04" placeholder="Telefono" name="telefonoEstu" required>
                            <div class="invalid-feedback">
                                Por favor ingrese un telefono!!
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="validationCustom05">Correo</label>
                            <input type="email" class="form-control" id="validationCustom05" placeholder="Correo" name="correoEstu"required>
                            <div class="invalid-feedback">
                                Por favor ingrese un correo!!
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="validationCustom05">Correo</label>
                            <input type="email" class="form-control" id="validationCustom05" placeholder="Correo" name="correoEstu"required>
                            <div class="invalid-feedback">
                                Por favor ingrese un correo!!
                            </div>
                        </div>
                       
                            <div class="form-group">
                                <label for="exampleFormControlFile1">Suba una foto del recibo de pago</label>
                                <input type="file" class="form-control-file" id="exampleFormControlFile1">
                            </div>
                        
                    </div>

                    <button class="btn btn-primary" type="submit" >Registar</button>
                </form>
            <jsp:include page="Layouts/Footer.jsp"></jsp:include>

            <script>
                // Example starter JavaScript for disabling form submissions if there are invalid fields
                (function () {
                    'use strict';
                    window.addEventListener('load', function () {
                        // Fetch all the forms we want to apply custom Bootstrap validation styles to
                        var forms = document.getElementsByClassName('needs-validation');
                        // Loop over them and prevent submission
                        var validation = Array.prototype.filter.call(forms, function (form) {
                            form.addEventListener('submit', function (event) {
                                if (form.checkValidity() === false) {
                                    event.preventDefault();
                                    event.stopPropagation();
                                }
                                form.classList.add('was-validated');
                            }, false);
                        });
                    }, false);
                })();
            </script>

    </body>
</html>
