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
    hola (nombre usuario)

    <h1>Publicaciones</h1>
    <div>
        <a href="/iniciasesion/registrate">login</a>
        <a href="/iniciasesion/registrate">registro</a>
        <a href="/publicacion">publicar</a>
        <a href="/mimascota">mis mascotas</a>
        <a href="/agregar">agregar</a>
        
    </div>
</body>
</html>