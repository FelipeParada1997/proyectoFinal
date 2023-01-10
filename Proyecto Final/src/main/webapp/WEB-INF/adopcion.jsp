
<!-- EDICION VANIA -->


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %> 


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Formulario de adopción</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- Boostrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- CSS FILE -->
    <link rel="stylesheet" href="css/adopcion.css">

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


    <!-- IMAGEN GRANDE NAV -->
    <section>
        <div class="position-relative">
            <img src="https://www.purina.es/sites/default/files/2021-12/Alimentos_y_plantas_toxicas%281%29_0_0.jpg" alt="" srcset="" style="height: 600px; width: 100%; filter: brightness(0.7)">
            <div id="textoimg" class="position-absolute top-50 start-50 translate-middle">"No Compres, adopta"</div> 
        </div>
    </section>


    <section class="d-flex justify-content-around p-5">
        <!-- STYLE -->
        <!-- CREAR CSS PARA ".main"  -->
        <div>
            <form:form method="post" action="/adopcion" modelAttribute="mascota" enctype="multipart/form-data">
                <p>
                    <form:label path="nombre">Nombre:</form:label>
                    <form:input path="nombre" type="text"  name="nombre"/>
                    <form:errors path="nombre"/>
                </p>
                <p>
                    <form:label path="tamano">Tamaño:</form:label>
                    <select name="tamano">
                        <option value="pequeño">Pequeño</option>
                        <option value="mediano">Mediano</option>
                        <option value="grande">Grande</option>
                    </select>
                    <form:errors path="tamano"/>
                </p>
                <p>
                    <form:label path="edad">Edad:</form:label>
                    <form:input  path="tamano" type="text"  name="edad"/>
                    <form:errors path="edad"/>
                </p>
                <p>
                    <form:label path="sexo">Sexo:</form:label>
                    <select name="sexo">
                        <option value="hembra">Hembra</option>
                        <option value="macho">Macho</option>
                    </select>
                    <form:errors path="sexo"/>
                </p>
                <p>
                    <form:label path="personalidad">Personalidad:</form:label>
                    <form:input  path="personalidad" type="text"  name="personalidad"/>
                    <form:errors path="personalidad"/>
                </p>
                <p>
                    <form:label path="energia">Edad:</form:label>
                    <form:input min="1" max="10"  path="energia" type="number"  name="energia"/>
                    <form:errors path="energia"/>
                </p>

                <div class="justify-content-center p-5" style="width: 40%;">
                    <h1>Querido [NOMBRE_USUARIO]</h1>
                    <h4>¡Muchas gracias por usar nuestra pagina de adopcion de animales!</h1>
                    <br>
                    <p>Estamos encantados que hay personas como tú que quieren dar un hogar a estos maravillosos seres.</p>
                    <br>
                    <p>Estamos decididos a ayudar a encontrar hogares seguros y amorosos para todos los animales que estan en nuestra pagina, y apreciamos mucho tu apoyo en esta mision.</p>
                    <br>
                    <p><strong>¡Gracias de nuevo por elegir nuestra pagina de adopcion de animales!</strong></p>
                    <br>
                    <p>Saludos cordiales,</p>
                    <br>
                    <p>Equipo Second Chance.</p>
                </div>
            </section>


                <input type="submit" value="Register" class="btn btn-primary"/>

                <input type="file" class="form-control bottom" name="postFile">
                </form:form>

            
        </div>
            
    <script src="js/home.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>