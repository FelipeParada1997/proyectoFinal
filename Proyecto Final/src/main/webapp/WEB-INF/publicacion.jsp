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
    <title>Publicacion</title>
</head>
<body>
    <div class="container-sm">
        <h1>Nueva Publicacion</h1>
        <a href="/userdentro" class="col-auto">Volver al home</a>
        <br>
        <form:form action="/publicacion" method="post" modelAttribute="publicacion">
                <p>
                    <form:label path="titulo">titulo</form:label>
                    <form:errors path="titulo"/>
                    <form:input path="titulo"  class="form-control"/>
            </p>
            <p>
                    <form:label path="descripcion">descripcion</form:label>
                    <form:errors path="descripcion"/>
                    <form:input path="descripcion" />
            </p>
            <p>
                <form:label path="mascota">Mascotas</form:label>
                    <form:select path="mascota">
                        <c:forEach items="${mascota}" var="mascota" >
                            <form:option value="${mascota.id}">
                                <c:out value="${mascota.nombre}"/>
                            </form:option>
                        </c:forEach>
                    </form:select>
            </p>
            </p>
                <form:label path="ciudad">Ciudad</form:label>
                    <form:select path="ciudad">
                        <c:forEach items="${ciudad}" var="ciudades">
                            <form:option value="${ciudades.id}">
                                <c:out value="${ciudades.nombre}"/>
                            </form:option>
                        </c:forEach>
                    </form:select>
    <p>
    <form:label path="ciudad">Region</form:label>
        <form:select path="ciudad">
            <c:forEach items="${region}" var="regiones">
                <form:option value="${regiones.id}">
                    <c:out value="${regiones.nombre}"/>
                </form:option>
            </c:forEach>
        </form:select>
    </p>
            <input type="submit" value="submit"/>
            <a href="/userdentro" class="btn btn-primary">cancel</a>
        </form:form>
            
        </div>
</body> 
</html>