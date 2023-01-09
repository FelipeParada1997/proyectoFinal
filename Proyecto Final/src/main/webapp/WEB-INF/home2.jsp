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
    <title>home de prueba</title>
</head>
<body>

    <h1>home usuario</h1>
    <h1><c:out value="${user.nombre}"/></h1>
    <div>
        <a href="/salir">deslogearse</a>
        <a href="/adopcion">agregar</a>
        <a href="/publicacion">publicacion</a>
    </div>
    <div>
        <h1>Publicaciones todas</h1>

    </div>
</body>
</html>