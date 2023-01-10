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
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/adopcion.css">
</head>
<body>
    <!-- STYLE -->
    <!-- CREAR CSS PARA "nav" -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-3">
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
                    <a class="nav-link text-white" href="#">¿Quiénes somos?</a>
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
                            Binevenido
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
    <section>
        <div class="position-relative">
            <img src="https://www.purina.es/sites/default/files/2021-12/Alimentos_y_plantas_toxicas%281%29_0_0.jpg" alt="" srcset="" style="height: 600px; width: 100%; filter: brightness(0.7)">
            <!-- STYLE -->
            <!-- CREAR CSS PARA "#textoimg"-->
            <div id="textoimg" class="position-absolute top-50 start-50 translate-middle" style="font-family: Arial, Helvetica, sans-serif; font-size: 80px; color: white; -webkit-text-stroke: 1px black; -webkit-text-fill-color: white; -webkit-text-stroke: 2px black;;">"No Compres, adopta"</div>
        </div>
    </section>
    <section class="d-flex justify-content-around p-5">
        <!-- STYLE -->
        <!-- CREAR CSS PARA ".main" -->
        <div class="main justify-content-center border border-secondary rounded p-5"  style="width: 40%;">
            <h1>Formulario de Adopcion</h1>
            <form:form action="/adopcion" method="POST" modelAttribute="mascota" enctype="multipart/form-data">
                <div class="mb-3">
                    <form:label path="nombre" class="form-label">Nombre</form:label>
                    <form:errors path="nombre"/>
                    <form:input path="nombre" class="form-control" placeholder="Ejemplo: Canelita" aria-label="default input example"/>
                </div>

                <div class="mb-3">
                    <form:label path="edad" class="form-label">Edad</form:label>
                    <form:errors path="edad"/>
                    <form:input path="edad" class="form-control" type="text" placeholder="Ejemplo: 3 meses" aria-label="default input example"/>
                </div>
                    
                <div>
                    <form:label class="form-label" path="tipoDeAnimal">Tipo de Animal</form:label>
                    <form:select path="tipoDeAnimal" class="form-select" aria-label="Default select example">
                        <c:forEach items="${tipos}" var="tipo" >
                            <form:option value="${tipo.id}">
                                <c:out value="${tipo.tipoDeAnimal}"/>
                            </form:option>
                        </c:forEach>
                    </form:select>
                </div>
                <div>
                        <form:label  class="form-label" path="personalidad">Personalidad</form:label>
                        <form:errors path="personalidad"/>
                        <form:input class="form-control" path="personalidad"/>
                </div>

                <div>
                    <form:label path="sexo" class="form-label">Sexo</form:label>
                    <select path="sexo" class="form-select" aria-label="Default select example">
                        <option selected>Elige el sexo de animal</option>
                        <option value="hembra">Hembra</option>
                        <option value="macho">Macho</option>
                    </select>
                </div>

                <div>
                    <form:label path="tamano" class="form-label">Tamaño</form:label>
                    <select path="tamano" class="form-select" aria-label="Default select example">
                        <option selected>Elige el tamaño de animal</option>
                        <option value="muy pequeno">Muy Pequeño</option>
                        <option value="pequeno">Pequeño</option>
                        <option value="mediano">Mediano</option>
                        <option value="Grande">Grande</option>
                        <option value="muy grande">Muy Grande</option>
                    </select>
                </div>

                <div class="mb-3">
                    <p class="form-label">No olvides de agregar una foto de tu mascota</p>
                    <input class="form-control" type="file" id="postFile" name="postFile"/>
                </div>

                <input type="submit" value="Next" class="btn btn-dark"/>
            </form:form>
        </div>

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
</body>
</html>