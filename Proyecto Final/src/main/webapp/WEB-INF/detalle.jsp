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
    <title>Detalles masotas</title>
</head>
<body>
    <h1>Detalles mascotas</h1>

    <a href="/">Volver al home</a>

    <h2><c:out value="${mascota.publicacion.titulo}"></c:out></h2>
    <h2><c:out value="${mascota.publicacion.descripcion}"></c:out></h2>
    <h2><c:out value="${mascota.nombre}"></c:out></h2>
    <img src="${mascota.ubicacion}" alt="${mascota.ubicacion}">


    <c:if  test="${userId == user.publicacionId}">
            <a href="/mascota/${id}/borrar">Borrar</a>
            <a href="/mascota/${mascota.id}/edit">editar mascota</a>
    </c:if>

</body>
</html>