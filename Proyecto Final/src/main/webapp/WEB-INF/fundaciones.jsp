<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %> 


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dona</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- BOOTSTRAP -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- CSS FILE -->
    <link rel="stylesheet" href="css/dona.css">
</head>
  <body>
    <!-- Navbar -->
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
                    <a class="nav-link text-white" href="/como-Adoptar-A-Tu-Mascota">¿Cómo adoptar a tu mascota?</a>
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

    <!-- Main -->
    <div class="container ">   
    <div class="row">
        <div class="col-6">
            <h1 class="titulo">Fundaciones que nos acompañan</h1>
            <h2 class="subTitulo ">Bienvenidos a Second Chance</h2>

            <p >Lorem ipsum dolor sit, amet consectetur adipisicing elit. At eaque natus eos aliquid, velit nisi laborum ad reprehenderit nam adipisci, tempore corporis iure quae sequi porro a tenetur non quam.</p>
            <p >Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis quidem aspernatur numquam, excepturi vero, officia arc</p>
            <br>
            <br>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor deleniti repudiandae magnam reiciendis explicabo quaerat velit doloribus ad temporibus nisi? Quidem doloremque suscipit quia mollitia pariatur culpa, cumque itaque molestiae?</p>
            <br>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates, animi, nobis qui libero sequi repellendus illo doloremque totam et magni ad quaerat ut esse saepe, non voluptas architecto porro quia.</p>


        
        </div>
        <div class="col-6">
            <img src="imagenes/gatoscorazon.jpg" alt="gato con corazon">
        </div>
      </div>
    </div>

 <!-- Footer -->
 <footer class="footer fixed-down footer-expand-lg bg-dark p-md-3 mt-4">
    <div class="container-fluid text-white">
        <nav class="row">
            <a href="" class="col-3 text-reset text-uppercase d-flex align-items-center">
                <img src="/imagenes/Second Chance.png" alt="logo second chance" class="logo mr-2" >
            </a>
            <ul class="col-3 list-unstyled">
                <li class="font-weight-bold text-uppercase">Teléfonos</li>
                <li><a href="#" class="text-reset">(22) 37825605</a></li>
                <li><a href="#" class="text-reset">(+569) 83750182</a></li>
            </ul>
            <ul class="col-3 list-unstyled">
                <li class="font-weight-bold text-uppercase">Dirección</li>
                <li><a href="#" class="text-reset">Av. las rosas comuna La Dehesa</a></li>
            </ul>
            <ul class="col-3 list-unstyled">
                <li class="font-weight-bold text-uppercase">Email</li>
                <li><a href="#" class="text-reset">secondChance@gmail.com</a></li>
            </ul>
        </nav>
    </div>
</footer>

    <script src="/js/home.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>
<!--  
    <div class="row">
        <div class="cuerpo col">
            <h1 class="titulo">Fundaciones que nos acompañan</h1>
            <h2 class="subTitulo ">Bienvenidos a Second Chance</h2>

            <p class="parrafo">En Second Chance somos un equipo de programadores con el objetivo de desarrollar una pagina que se dedique a la adopcion segura, 
                nuestro objetivo como equipo es hacer esta red lo mas segura y efectiva para especializarnos en el ambito de la adopcion, resolviendo
                los tipicos vacios que quedan a la hora de adoptar en otras redes sociales las cuales no estan hechas especialmente para esto.
                Nuestra organizacion es sin fines de lucro por lo que las donaciones se van directamente para mejorar nuestra pagina, y asi ir 
                prosperando y agilizando las adopciones para todos los animalitos.</p>
            
        </div>
        <div class="animacion col">
            <img src="https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_curiosidad__small/public/articulos/perro-infecciones.jpg" alt="">
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>