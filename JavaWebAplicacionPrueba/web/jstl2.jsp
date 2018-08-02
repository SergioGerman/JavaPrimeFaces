<%-- 
    Document   : jstl2
    Created on : 02-ago-2018, 16:32:40
    Author     : CYBER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World JSTL2!</h1>
        <c:choose>
            <c:when test="${param.mostrarTextoCondicional=='1'}">
                Este parrafo se mostrara si el parametro de consulta llamado
                tiene un valor de "1".
            </c:when>
            <c:when test="${param.mostrarTextoCondicional=='2'}">
                Este parrafo se mostrara si el parametro de consulta llamado
                tiene un valor de "2".
            </c:when>
            <c:otherwise>
                Este parrafo solo se mostrara si el parametro de consulta llamado 
                "mostrarTextCondicional" no esta presente o tiene un valor
                diferente a "1" o "2".
            </c:otherwise>
        </c:choose>
    </body>
</html>
