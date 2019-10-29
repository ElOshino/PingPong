<%-- 
    Document   : login
    Created on : 12/10/2019, 08:55:52 PM
    Author     : Santiago
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>





         
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" >
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
        <title>Ingreso</title>
    </head>
    <body>


        <div class="container">
            <h1>Ingreso</h1>
            <div class="abs-center">
                <form action="login" method="POST" class="border p-3 form">
                    <div class="form-group">
                        <label for="text">Usuaro</label>
                        <input type="text" name="user" id="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="password">Constraseña</label>
                        <input type="password" name="password" id="password" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-primary">Ingreso</button>
                </form>
            </div>
            <!-- Footer -->
            <footer class="page-footer font-small">

                <!-- Copyright -->
                <div class="footer-copyright text-center py-3">© 2018 Copyright: Santiago Alfonso
                  
                </div>
                <!-- Copyright -->

            </footer>
            <!-- Footer -->
        </div>
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