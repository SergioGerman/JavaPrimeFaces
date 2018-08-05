<%-- 
    Document   : jstl_sql
    Created on : 05-ago-2018, 11:13:44
    Author     : CYBER
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL SQL Page</title>
    </head>
    
        <h1>Hello World!</h1>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/customers" user="root" password=""/>
        <sql:query dataSource="${snapshot}" var="result">
            Select name, city, state FROM nombre
        </sql:query>
    <table border="1">
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Localizacion</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="currentRow" items="${result.rows}">            
            <tr>
                <td>${currentRow.name}</td>
                <td>${currentRow.city},
                    ${currentRow.state}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    
</html>
