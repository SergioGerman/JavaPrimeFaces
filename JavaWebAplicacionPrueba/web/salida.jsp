<%-- 
    Document   : salida
    Created on : 02-08-2018, 12:50:01 AM
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
        <h1>Gracias por completar nuestra encuesta.</h1>
        <p>
            <jsp:getProperty name="datosEncuesta" property="nombreCompleto" />
            los lenguajes con los que se siente familiarizado son:
            <jsp:useBean id="datosEncuesta" scope="request" class="Modelo.DatosEncuesta" />
        </p>
        <ul>
            <%
                String[] lenguajesSeleccionados= datosEncuesta.getProgLeng();
                if(lenguajesSeleccionados != null){
                    for(int i=0; i<lenguajesSeleccionados.length;i++){
            %>
            <li><%= lenguajesSeleccionados[i] %></li>
            <%
                    }
                }

            %>
        </ul>
    </body>
</html>
