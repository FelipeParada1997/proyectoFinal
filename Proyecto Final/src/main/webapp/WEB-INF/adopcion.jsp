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
    <title>Adopcion</title>
</head>
<body>
    <h1>adopta</h1>
    <form:form method="post" action="/adopcion" modelAttribute="mascota" enctype="multipart/form-data">
        <p>
            <form:label path="nombre">Nombre</form:label>
            <form:errors path="nombre"/>
            <form:input  path="nombre"/>
        </p>
        <p>
            <form:label path="tamano">tamaño</form:label>
            <form:errors path="tamano"/>
            <form:select  path="tamano">
                <form:option value="pequeño"/>
                <form:option value="Mediano"/>
                <form:option value="Grande"/>
            </form:select>
        </p>
        <p>
            <form:label path="sexo">sexo</form:label>
            <form:errors path="sexo"/>
            <form:select  path="sexo">
                <form:option value="Macho"/>
                <form:option value="Hembra"/>
            </form:select>
        </p>
        <p>
            <form:label path="edad">edad</form:label>
            <form:errors path="edad"/>
            <form:input path="edad" />
        </p>
        <p>
            <form:label path="personalidad">personalidad</form:label>
            <form:errors path="personalidad"/>
            <form:input path="personalidad"/>
        </p>
        <p>
            <form:label path="energia">energia</form:label>
            <form:errors path="energia"/>
            <form:input type="number" path="energia" min="1" max="10"/>
        </p>
        <p><input type="file" name="postFile"/></p> 

        <input type="submit" value="submit"/>
    </form:form>
</body>
</html>