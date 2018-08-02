<%-- 
    Document   : jstl1
    Created on : 02-ago-2018, 16:18:06
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
        <h1>Hello World JSTL!</h1>
        <p>Este parrafo se mostrara siempre</p>
        <c:if test="${param.mostrarTextoCondicional=='true'}" var="textoMostrado" scope="session">
            <p>Este parrafo se mostrara solo si el parametro de consulta llamado "mostrarTextoCondicional" tiene un valor en "true".</p>
        </c:if>
        <p>este parrafo tambien se mostrara siempre</p>
        
    </body>
</html>
