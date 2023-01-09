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
    <title>Registrate o inicia</title>
</head>
<body>
    <h1>puede iniciar sesion o registrarte</h1>
                    <form:form method="post" action="/registerpost" modelAttribute="user">
                        <p>
                            <form:label path="nombre">Name</form:label>
                            <form:errors path="nombre"/>
                            <form:input  path="nombre" class="form-control form-control-sm"/>
                        </p>
                        <p>
                            <form:label path="apellido">apellido</form:label>
                            <form:errors path="apellido"/>
                            <form:input  path="apellido" />
                        </p>
                        <p>
                            <form:label path="celular">celular</form:label>
                            <form:errors path="celular"/>
                            <form:input  path="celular" />
                        </p>
                        <p>
                            <form:label path="fechaNacimiento">Fecha Nacimiento</form:label>
                            <form:errors path="fechaNacimiento"/>
                            <form:input type="date"  path="fechaNacimiento" />
                        </p>
                        <p>
                            <form:label path="email">Email</form:label>
                            <form:errors path="email"/>
                            <form:input type="email"  path="email" class="form-control form-control-sm"/>
                        </p>
                        <p>
                            <form:label path="password">Password</form:label>
                            <form:errors path="password"/>
                            <form:input type ="password" path="password" class="form-control form-control-sm"/>
                        </p>
                        <p>
                            <form:label path="passwordConfirm">Password Confirmar</form:label>
                            <form:errors path="passwordConfirm"/>
                            <form:input type="password" path="passwordConfirm"/>
                        </p>
                        <input type="submit" value="Register" class="btn btn-primary"/>
                        </form:form>
    </div>
        </div>
<div class="col">
    <div class="p-3 border bg-light">
        <h2>Login</h2>
            <p><c:out value="${error}" /></p>
                <form method="post" action="/loginpost">
                    <p>
                        <label for="email">Email</label>
                        <input type="text" id="email" name="email" class="form-control form-control-sm"/>
                    </p>
                    <p>
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" class="form-control form-control-sm"/>
                    </p>
                    <input type="submit" value="Login!" class="btn btn-primary"/>
                </form>
    </div>
        </div>
            </div>
                </div>
    </div>
</body>
</html>