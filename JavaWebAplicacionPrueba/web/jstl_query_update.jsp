<%-- 
    Document   : jstl_query_update
    Created on : 05-ago-2018, 12:27:39
    Author     : CYBER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/customers" user="root" password=""/>
        <sql:update dataSource="${snapshot}" var="up">
            INSERT INTO nombre VALUES ('Mayra Gonzales', 'El Alto', 'La Paz');
        </sql:update>
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * FROM nombre;
        </sql:query>
            <table>
                <thead>
                    <tr>
                        <td>Nombre</td>
                        <td>Localizacion</td>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="currentRows" items="${result.rows}">
                    <tr>
                        <td>${currentRows.name}</td>
                        <td>${currentRows.city},
                            ${currentRows.state}</td>
                    </tr>                    
                </c:forEach>
                </tbody>
            </table>
    </body>
</html>
