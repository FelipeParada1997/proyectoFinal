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
    <title>Bootstrap demo</title>
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
                <img src="imagenes/Second Chance.png" id="logo" alt="logo home">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav" style="margin-left: auto;">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Inicio</a>
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

    <div class="container-lg">
        <div class="row">
            <ul class="animals d-flex justify-content-center" style="height: 200px;">
                <li><img src="imagenes/perrocollie.png" style="height: 80%;"></li>
                <li><img src="imagenes/gatonaranja.png" style="height: 80%;"></li>
                <li><img src="imagenes/conejo.png" style="height: 75%;"></li>
            </ul>
        </div>
    </div>



    <script src="js/home.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>




















