<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Boostrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- CSS FILE -->
        <link rel="stylesheet" href="css/publicacion.css">
    <title>Publicación</title>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3" >
        <div class="container-fluid">
            <a href="#" class="navbar-brand">
                <img src="imagenes/Second Chance.png" class="logo" alt="logo home">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav" style="margin-left: auto;">
                <li class="nav-item">
                    <a class="nav-link text-white" aria-current="page" href="#">Inicio</a>
                </li>
                <li class="nav-item" style="display: inline-block;">
                    <a class="nav-link text-white" href="/quienesSomos">¿Quiénes somos?</a>
                </li>
                <li class="nav-item" style="display: inline-block;">
                    <a class="nav-link text-white" href="#">¿Cómo adoptar a tu mascota?</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        ¿Cómo ayudar?
                        </a>
                        <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Dona</a></li>
                        <li><a class="dropdown-item" href="#">Hazte socio</a></li>
                        <li><a class="dropdown-item" href="#">Fundaciones</a></li>
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
                            <li><a class="dropdown-item" href="/adopcion">Crear publicacion</a></li>
                            <li><a class="dropdown-item" href="/salir">Cerrar sesión</a></li>
                        </ul>
                    </c:if>

                </li>
                </ul>
            </div>
        </div>
    </nav>


    <!-- Fondo navbar -->
    <section>
        <div class="position-relative">
            <img src="imagenes/conejofondo.jpg" alt="" srcset="" style="height: 600px; width: 100%; filter: brightness(0.7)">
            <div id="textoimg" class="position-absolute top-50 start-50 translate-middle">"No Compres, adopta"</div> 
        </div>
    </section>

        <!-- Banner image start -->
        <div class="imagen-background">
                <div id="imagen">
                    <img src="imagenes/conejofondo.jpg" alt="fondo de conejo">
                    <h1 class="caption text-center">No compres, adopta</h1>
                </div>
        </div>



    <!-- Formulario -->
    <div class="container-sm">
        <h1>Nueva Publicacion</h1>
        <a href="/" class="col-auto">Volver al home</a>
        <br>
        <form:form action="/publicacion" method="post" modelAttribute="publicacion">
                <p>
                    <form:label path="titulo">titulo</form:label>
                    <form:errors path="titulo"/>
                    <form:input path="titulo"/>
            </p>
            <p>
                    <form:label path="descripcion">descripcion</form:label>
                    <form:errors path="descripcion"/>
                    <form:input path="descripcion" />
            </p>
            <p>
                <form:label path="mascota">Mascotas</form:label>
                    <form:select path="mascota">
                        <c:forEach items="${mascota}" var="mascota" >
                            <form:option value="${mascota.id}">
                                <c:out value="${mascota.nombre}"/>
                            </form:option>
                        </c:forEach>
                    </form:select>
            </p>
            </p>
                <form:label path="ciudad">Ciudad</form:label>
                    <form:select path="ciudad">
                        <c:forEach items="${ciudad}" var="ciudades">
                            <form:option value="${ciudades.id}">
                                <c:out value="${ciudades.nombre}"/>
                            </form:option>
                        </c:forEach>
                    </form:select>
    <p>
    <form:label path="ciudad">Region</form:label>
        <form:select path="ciudad">
            <c:forEach items="${region}" var="regiones">
                <form:option value="${regiones.id}">
                    <c:out value="${regiones.nombre}"/>
                </form:option>
            </c:forEach>
        </form:select>
    </p>
            <input type="submit" value="submit"/>
            <a href="/" class="btn btn-primary">cancel</a>
        </form:form>

        <a href="/mascota/{mascota.id}/edit">editar mascota</a>
    </div>

    <script src="js/home.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body> 
</html>
