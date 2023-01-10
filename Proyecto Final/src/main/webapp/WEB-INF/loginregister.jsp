<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta path="viewport" content="width=device-width, initial-scale=1.0">
        <!---- bootstrap ----->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- Css -->
<link rel="stylesheet" href="/css/loginregister.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <title>Inicia sesión | Registrate</title>
</head>
<body>
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3" >
            <div class="container-fluid">
                <a href="#" class="navbar-brand">
                    <img src="/imagenes/Second Chance.png" class="logo" alt="logo home">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav" style="margin-left: auto;">
                    <li class="nav-item">
                        <a class="nav-link text-white" aria-current="page" href="/">Inicio</a>
                    </li>
                    <li class="nav-item" style="display: inline-block;">
                        <a class="nav-link text-white" href="/quienesSomos">¿Quíenes somos?</a>
                    </li>
                    <li class="nav-item" style="display: inline-block;">
                        <a class="nav-link text-white" href="/como-Adoptar-A-Tu-Mascota">¿Cómo adoptar a tu mascota?</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            ¿Como ayudar?
                            </a>
                            <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/dona">Dona</a></li>
                            <li><a class="dropdown-item" href="/hazteSocio">Hazte socio</a></li>
                            <li><a class="dropdown-item" href="/fundaciones">Fundaciones</a></li>
                            </ul>
                    </li>
                    <li class="nav-item dropdown text-white">
                        <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-person-fill"></i> Mi cuenta</a>
                        <ul class="dropdown-menu">

                         <%-- colocar un if --%>
                        <li><a class="dropdown-item" href="/iniciasesion/registrate">Registro</a></li>
                        <li><a class="dropdown-item" href="/iniciasesion/registrate">Inicio sesión</a></li>

                        <li><a class="dropdown-item" href="/miPerfil">Mi perfil</a></li>
                        <li><a class="dropdown-item" href="#">Cerrar sesión</a></li>
                        </ul>
                    </li>
                    </ul>
                </div>
            </div>
        </nav>
<div class="contenedorDeTodo">
    <div class="wrapper">
        <div class="form-wrapper sign-in" >
            <form method="post" action="/loginpost">
                <h2>Inicia sesión</h2>

                <div class="input-group">
                    <input  type="text" id="email" name="email" >
                    <label  for="email">Correo electrónico</label>
                </div>

                <div class="input-group">
                    <input  type="password" id="password" name="password" >
                    <label  for="password">Contraseña</label>
                </div>

                <div class="remember">
                    <label><input type="checkbox">  Recuérdame</label>
                </div>
                <button type="submit">Inicia sesión</button>
                <div class="signUp-link">
                    <p>¿No tienes una cuenta?<a href="#" class="signUpBtn-link">  Únete</a></p>
                </div>
                <div class="social-platform">
                    <p>O inicia sesión con</p>
                <div class="social-icons">
                    <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#"><i class="fa-brands fa-google"></i></a>
                </div>
                </div>
            </form>
        </div>

            <div class="form-wrapper sign-up">
                <form:form method="post" action="/registerpost" modelAttribute="user">
                    <h2>Únete</h2>
                    <div class="input-group">
                        <form:input type="text" id="nombre" path="nombre" />
                        <form:label path="nombre">Nombre</form:label>
                    </div>
                    <div class="input-group">
                        <form:input type="text" id="apellido" path="apellido" />
                        <form:label path="apellido">Apellido</form:label>
                    </div>

                    <div class="input-group">
                        <form:input type="date" id="fechaNacimiento" path="fechaNacimiento"/>
                        <form:label path="fechaNacimiento">Fecha de nacimiento</form:label>
                    </div>
                    <div class="input-group">
                        <form:input type="text" id="email" path="email" />
                        <form:label path="email">Correo electrónico</form:label>
                    </div>
                    <div class="input-group">
                        <form:input type="password" id="password" path="password" />
                        <form:label path="password">Contraseña</form:label>
                    </div>
                    <div class="input-group">
                        <form:input type="password" id="passwordConfirm" path="passwordConfirm" />
                        <form:label path="passwordConfirm">Confirma contraseña</form:label>
                    </div>


                            <div class="remember">
                                <label><input type="checkbox"> Acepto los términos y condiciones</label>
                            </div>
                            <button type="submit">Registrate</button>
                            <div class="signUp-link">
                                <p>¿Ya tienes cuenta?<a href="#" class="signInBtn-link">  Inicia sesión</a></p>
                            </div>
                    </form:form>
                </div>
        </div>
</div>
        <script src="/js/loginregister.js"></script>
        <script src="js/home.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>