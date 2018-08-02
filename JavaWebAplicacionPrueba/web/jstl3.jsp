<%-- 
    Document   : jstl3
    Created on : 02-ago-2018, 16:40:51
    Author     : CYBER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.AlumnosBean"%>
<!DOCTYPE html>

<%                      
    ArrayList<AlumnosBean> listaAlumnos=new ArrayList<AlumnosBean>();
    
    listaAlumnos.add(new AlumnosBean("Jaime", "Montoro"));
    listaAlumnos.add(new AlumnosBean("Antonio", "Casas"));
    listaAlumnos.add(new AlumnosBean("Maria", "Fuentes"));
    
session.setAttribute ("listaAlumnos", listaAlumnos);
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World JSTL3!</h1>
        <table>
            <tr>
                <th>nombre</th>
                <th>apellidos</th>
            </tr>            
        <c:forEach var="alumnos" items="${sessionScope.listaAlumnos}">
            <tr>
                <td>${alumnos.nombre}</td>
                <td>${alumnos.apellidos}</td>
            </tr>
        </c:forEach>
                            
        </table>
    </body>
</html>
