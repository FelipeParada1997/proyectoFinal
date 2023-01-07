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
    <nav class="d-flex bg-dark navbar fixed-top navbar-expand-lg navbar-dark p-md-3" style="background-image: url(https://www.solidbackgrounds.com/images/2560x1440/2560x1440-sea-blue-solid-color-background.jpg);">
        <div class="container-fluid">
            <a href="#" class="navbar-brand">
                <!-- STYLE -->
                <!-- CREAR CSS PARA "#logo"-->
                <img src="Second Chance.png" id="logo" alt="logo home" style="width: 30%;">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="justify-content-end collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Inicio</a>
                </li>
                <!-- STYLE -->
                <!-- CREAR CSS PARA "#linknav"-->
                <li id="linknav" class="nav-item" style="display: inline-block;">
                    <a class="nav-link text-white" href="#">¿Quiénes somos?</a>
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
                    <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Adoptame aquí!
                    </a>
                    <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Perros</a></li>
                    <li><a class="dropdown-item" href="#">Gatos</a></li>
                    <li><a class="dropdown-item" href="#">Exóticos</a></li>
                    </ul>
                </li>
                <li class="nav-item text-white">
                    <a class="nav-link text-white" href="#"><i class="bi bi-person-fill"></i> Mi cuenta</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Registrate</a></li>
                        <li><a class="dropdown-item" href="#">Inicia sesión</a></li>
                    </ul>
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
            <form>
                <div class="mb-3">
                    <label class="form-label">Nombre</label>
                    <input class="form-control" placeholder="Ejemplo: Canelita" type="text" aria-label="default input example">
                </div>

                <div class="mb-3">
                    <label class="form-label">Edad</label>
                    <input class="form-control" type="text" placeholder="Ejemplo: 3" aria-label="default input example">
                </div>
                    
                <div>
                    <label class="form-label">Tipo de Animal</label>
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Elige el tipo de animal</option>
                        <option value="1">Gato</option>
                        <option value="2">Perro</option>
                        <option value="3">Otro</option>
                    </select>
                </div>

                <div>
                    <label class="form-label">Región</label>
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Elige la Región</option>
                        <option value="1">Region</option>
   
                    </select>
                </div>

                <div>
                    <label class="form-label">Ciudad</label>
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Elige la Ciudad</option>
                        <option value="1">Ciudad</option>
                    </select>
                </div>

                <div>
                    <label class="form-label">Sexo</label>
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Elige el sexo de animal</option>
                        <option value="1">Hembra</option>
                        <option value="2">Macho</option>
                    </select>
                </div>

                <div>
                    <label class="form-label">Tamaño</label>
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Elige el tamaño de animal</option>
                        <option value="1">Muy Pequeño</option>
                        <option value="2">Pequeño</option>
                        <option value="2">Mediano</option>
                        <option value="2">Grande</option>
                        <option value="2">Muy Grande</option>
                    </select>
                </div>

                <p>Esterilización</p>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">
                    Si
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                    <label class="form-check-label" for="flexRadioDefault2">
                    No
                    </label>
                </div>

                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Danos una breve descripcion del animal:</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>

                <div class="mb-3">
                    <label for="formFile" class="form-label">Sube una foto en vertical de tu Animal</label>
                    <input class="form-control" type="file" id="formFile">
                </div>

                <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>

                <button type="submit" class="btn btn-dark">Submit</button>
            </form>
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