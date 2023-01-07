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
    <title>Agregar Mascota</title>
</head>
<body>
    <div class="container-sm">
        <h1>Nueva Publicacion</h1>
        <a href="/principal" class="col-auto">Volver al home</a>
        <br>
        <form:form action="/agregar" method="post" modelAttribute="mascota">
                <p>
                    <form:label path="nombre">nombre</form:label>
                    <form:errors path="nombre"/>
                    <form:input path="nombre"  class="form-control"/>
            </p>
            <p>
                    <form:label path="edad">edad</form:label>
                    <form:errors path="edad"/>
                    <form:input path="edad" class="form-control"/>
            </p>

            <input type="submit" value="submit" class="btn btn-primary"/>
            <a href="/" class="btn btn-primary">cancel</a>
        </form:form>
        </div>
</body>
</html>