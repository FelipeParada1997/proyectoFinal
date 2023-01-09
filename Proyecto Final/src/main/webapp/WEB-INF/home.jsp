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

    <h1>HOME</h1>
    <div>
        <a href="/iniciasesion/registrate">login/registro</a>

        <c:if  test="${session.getAttribute(userId)== true}">
            holiholiiiii
        </c:if>
    </div>
</body>
</html>