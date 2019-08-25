<%-- 
    Document   : menu
    Created on : 25-ago-2019, 0:47:02
    Author     : Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú</title>
        <link rel="stylesheet" type="text/css" href="./css/ena.css">
    </head>
    <body>
        <div class="cabecera">Menú Principal</div>
        <div>
            <form action="InicioServlet" method="post">
                <input type="submit" name="new_req" id="new_req" value="Ingresar Requerimiento" >
            </form>
        </div>
        <div><a href="consultar.jsp"><input type="button" name="con_req" id="con_req" value="Consultar Requerimiento"></a></div>
        <div><a href="cerrar.jsp"><input type="button" name="cl_req" id="cl_req" value="Cerrar Requerimiento"></a></div>
           
       
    </body>
</html>

