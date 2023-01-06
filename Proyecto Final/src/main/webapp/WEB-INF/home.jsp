<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Second Chance</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <!-- css file -->
    <link rel="stylesheet" href="css/home.css">
    

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
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-person-fill"></i>
                    Mi cuenta
                    </a>
                    <ul class="dropdown-menu">

                    <li><a class="dropdown-item" href="#">Registro</a></li>
                    <li><a class="dropdown-item" href="#">Inicio sesión</a></li>
                    <li><a class="dropdown-item" href="#">Mi perfil</a></li>
                    <li><a class="dropdown-item" href="#">Cerrar sesión</a></li>
                    </ul>
                </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Banner image start -->
    <div class="video-background">
        <div class="video-wrap">
            <div id="video">
                <video id="bgvid" autoplay loop muted playsinline>
                    <source src="imagenes/videofondo.mp4" type="video/mp4">
                </video>
            </div>
        </div>
    </div>
    <!-- Banner image end-->

    <!-- start caption image -->
    <div class="caption text-center">
        <h1>AYUDALOS A SER FELICES</h1>
        <h3>Adopta y regala una segunda opotunidad a un animal</h3>
        <div class="button">
            <a href="#seccion_cards" class="btn btn-outline-light btn-lg">Adopta</a>
        </div>
    </div>
    <!-- end caption image -->


    <!--start animales bajo video  -->
    <div class="container-lg">
        <div class="row">
            <h2 class="text-center mt-4">Escoge a tu próximo peludo</h2>
            <ul class="animals d-flex justify-content-center " style="height: 120px; list-style: none;">
                <li><img src="imagenes/perrocollie.png" style="height: 100%;"></li>
                <li><img src="imagenes/gatonaranja.png" style="height: 100%;"></li>
                <li><img src="imagenes/conejo.png" style="height: 95%;"></li>
            </ul>
        </div>
    </div>

    <!-- Publicaciones -->
    <div class="main d-flex justify-content-center" id="seccion_cards">
        <div class="row">
            <div class="col card-content">
                <div class="card">
                    <img src="imagenes/gatomaxi.jpg" class="card-img">
                    <div class="card-body">
                        <h1 class="card-title">Nombre animal</h1>
                        <p class="card-sub-title">NOMBRE PERSONA PUBLICÓ</p>
                        <p class="card-info">INFORMACION</p>
                    <button class="btn btn-outline-light btn-lg">Más información</button>
                    </div>
                </div>
            </div>
            <div class="col card-content">
                <div class="card ">
                    <img src="imagenes/gatomaxi.jpg" class="card-img">
                    <div class="card-body">
                        <h1 class="card-title">Nombre animal</h1>
                        <p class="card-sub-title">NOMBRE PERSONA PUBLICÓ</p>
                        <p class="card-info">INFORMACION</p>
                    <button class="btn btn-outline-light btn-lg">Más información</button>
                    </div>
                </div>
            </div>
            <div class="col card-content">   
                <div class="card">
                    <img src="imagenes/gatomaxi.jpg" class="card-img">
                    <div class="card-body">
                        <h1 class="card-title">Nombre animal</h1>
                        <p class="card-sub-title">NOMBRE PERSONA PUBLICÓ</p>
                        <p class="card-info">INFORMACION</p>
                    <button class="btn btn-outline-light btn-lg">Más información</button>
                    </div>
                </div> 
            </div>
        </div>
    </div>


    <div class="main d-flex justify-content-center" id="seccion_cards">
        <div class="row">
            <div class="col card-content">
                <div class="card">
                    <img src="imagenes/gatomaxi.jpg" class="card-img">
                    <div class="card-body">
                        <h1 class="card-title">Nombre animal</h1>
                        <p class="card-sub-title">NOMBRE PERSONA PUBLICÓ</p>
                        <p class="card-info">INFORMACION</p>
                    <button class="btn btn-outline-light btn-lg">Más información</button>
                    </div>
                </div>
            </div>
            <div class="col card-content">
                <div class="card ">
                    <img src="imagenes/gatomaxi.jpg" class="card-img">
                    <div class="card-body">
                        <h1 class="card-title">Nombre animal</h1>
                        <p class="card-sub-title">NOMBRE PERSONA PUBLICÓ</p>
                        <p class="card-info">INFORMACION</p>
                    <button class="btn btn-outline-light btn-lg">Más información</button>
                    </div>
                </div>
            </div>
            <div class="col card-content">   
                <div class="card">
                    <img src="imagenes/gatomaxi.jpg" class="card-img">
                    <div class="card-body">
                        <h1 class="card-title">Nombre animal</h1>
                        <p class="card-sub-title">NOMBRE PERSONA PUBLICÓ</p>
                        <p class="card-info">INFORMACION</p>
                    <button class="btn btn-outline-light btn-lg">Más información</button>
                    </div>
                </div> 
            </div>
        </div>
    </div>

    <div class="main d-flex justify-content-center" id="seccion_cards">
        <div class="row">
            <div class="col card-content">
                <div class="card">
                    <img src="imagenes/gatomaxi.jpg" class="card-img">
                    <div class="card-body">
                        <h1 class="card-title">Nombre animal</h1>
                        <p class="card-sub-title">NOMBRE PERSONA PUBLICÓ</p>
                        <p class="card-info">INFORMACION</p>
                    <button class="btn btn-outline-light btn-lg">Más información</button>
                    </div>
                </div>
            </div>
            <div class="col card-content">
                <div class="card ">
                    <img src="imagenes/gatomaxi.jpg" class="card-img">
                    <div class="card-body">
                        <h1 class="card-title">Nombre animal</h1>
                        <p class="card-sub-title">NOMBRE PERSONA PUBLICÓ</p>
                        <p class="card-info">INFORMACION</p>
                    <button class="btn btn-outline-light btn-lg">Más información</button>
                    </div>
                </div>
            </div>
            <div class="col card-content">   
                <div class="card">
                    <img src="imagenes/gatomaxi.jpg" class="card-img">
                    <div class="card-body">
                        <h1 class="card-title">Nombre animal</h1>
                        <p class="card-sub-title">NOMBRE PERSONA PUBLICÓ</p>
                        <p class="card-info">INFORMACION</p>
                    <button class="btn btn-outline-light btn-lg">Más información</button>
                    </div>
                </div> 
            </div>
        </div>
    </div>

    <!-- Pagination -->

<div class="pagination justify-content-center">
    <div class="page-item previous-pag"><a href="#" class="page-link">Prev</a></div>
    <div class="page-item current-page"><a href="#" class="page-link">1</a></div>
    <div class="page-item dots"><a href="#" class="page-link">...</a></div>
    <div class="page-item current-page"><a href="#" class="page-link">5</a></div>
    <div class="page-item current-page"><a href="#" class="page-link">6</a></div>
    <div class="page-item dots"><a href="#" class="page-link">...</a></div>
    <div class="page-item current-page"><a href="#" class="page-link">10</a></div>
    <div class="page-item next-page"><a href="#" class="page-link">Next</a></div>
</div>











    <!-- Footer -->
    <footer class="footer fixed-down footer-expand-lg bg-dark p-md-3 mt-4">
        <div class="container-fluid ">
            <nav class="row">
                <a href="" class="col-3 text-reset text-uppercase d-flex align-items-center">
                    <img src="imagenes/Second Chance.png" alt="logo second chance" class="logo mr-2" >
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

    <script src="js/home.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>




















