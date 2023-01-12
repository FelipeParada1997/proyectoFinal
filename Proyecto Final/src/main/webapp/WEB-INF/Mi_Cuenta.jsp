<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Perfil</title>
    <link rel="stylesheet" type="text/css" href="/css/Mi_Cuenta.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3" >
            <div class="container-fluid">
                <a href="/" class="navbar-brand">
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
                        <a class="nav-link text-white" href="/quienesSomos">¿Quiénes somos?</a>
                    </li>
                    <li class="nav-item" style="display: inline-block;">
                        <a class="nav-link text-white" href="como-Adoptar-A-Tu-Mascota">¿Cómo adoptar a tu mascota?</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            ¿Cómo ayudar?
                            </a>
                            <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/dona">Dona</a></li>
                            <li><a class="dropdown-item" href="/hazteSocio">Hazte socio</a></li>
                            <li><a class="dropdown-item" href="/fundaciones">Fundaciones</a></li>
                            </ul>
                    </li>

                        <c:if test="${userId == null}">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-person-fill"></i>
                                Bienvenido
                                </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/iniciasesion/registrate">Registro/Inicio</a></li>
                            </ul>
                        </c:if>
                        <c:if test="${userId != null}">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-person-fill"></i>
                                <c:out value="${user.nombre}"></c:out>
                                </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Mi perfil</a></li>
                                <li><a class="dropdown-item" href="/misesion">Mi sesion</a></li>
                                <li><a class="dropdown-item" href="/adopcion">Crear publicacion</a></li>
                                <li><a class="dropdown-item" href="/salir">Cerrar sesión</a></li>
                            </ul>
                        </c:if>

                    </li>
                    </ul>
                </div>
            </div>
        </nav>

    <section class="seccion-perfil-usuario">
        <div class="perfil-usuario-header">
            <div class="perfil-usuario-portada">
                <div class="perfil-usuario-avatar">
                    <img src="Imagenes/585e4bf3cb11b227491c339a.png" alt="img-avatar">
                </div>
            </div>
        </div>
        <div class="perfil-usuario-body">
            <div class="perfil-usuario-bio">
                <h3 class="titulo"></h3>
            </div>
            <div class="perfil-usuario-footer">
                <ul class="lista-datos">
                    <li><i class="icono fas fa-map-signs"></i> Nombre de usuario:<c:out value="${user.nombre} ${user.apellido}"></c:out> </li>
                    <li><i class="icono fas fa-phone-alt"></i> Telefono:<c:out value="${user.celular}"></c:out></li>
                    <li><i class="icono fas fa-calendar-alt"></i> Fecha nacimiento:<c:out value="${user.fechaNacimiento}"></c:out></li>
                </ul>
            </div>
            <div class="perfil-usuario-footer">
                <div>
                    <a href="/" class="btn btn-primary" >Volver a inicio</a>
                </div>
            </div>
            <div class="perfil-usuario-footer">


            </div>
            <div class="redes-sociales">
                <a href="https://www.facebook.com" class="boton-redes facebook fab fa-facebook-f"><i class="icon-facebook"></i></a>
                <a href="https://twitter.com" class="boton-redes twitter fab fa-twitter"><i class="icon-twitter"></i></a>
                <a href="https://www.instagram.com" class="boton-redes instagram fab fa-instagram"><i class="icon-instagram"></i></a>
            </div>
        </div>
    </section>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>