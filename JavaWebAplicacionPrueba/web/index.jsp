<%-- 
    Document   : index.jsp
    Created on : 02-08-2018, 12:40:24 AM
    Author     : Principal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>Con cual de los siguientes lenguajes se siente familiarizado.</p>
        <form action="ServletCotroller" method="POST">
            <table>
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombreCompleto" /></td>                   
                </tr>
                <tr>
                    <td>Java</td>
                    <td><input type="checkbox" name="progLeng" value="java"></td>
                </tr>
                <tr>
                    <td>Python</td>
                    <td><input type="checkbox" name="progLeng" value="python"></td>
                </tr>
                <tr>
                    <td>PHP</td>
                    <td><input type="checkbox" name="progLeng" value="PHP"></td>
                </tr>
                <tr>
                    <td>Ruby</td>
                    <td><input type="checkbox" name="progLeng" value="ruby"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
