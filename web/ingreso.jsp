<%-- 
    Document   : ingreso
    Created on : 24-ago-2019, 21:50:26
    Author     : Carlos
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Ena.modelo.Gerencia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingreso nuevo requerimiento</title>
        <link rel="stylesheet" type="text/css" href="./css/ena.css">
        <script>
            function enviar(){
                var frm = document.getElementById('form1');
                var sel = document.getElementById('gerencia');
                frm.submit();
            }
        </script>
    </head>
    <body>
       
        <h1>Ingreso</h1>
         <div class="formulario">
              <div class="cabecera">
                    Ingresar Requerimiento
                </div>
            <form action="inicioservlet" method="post" id="form1">
                <div class="input_text">
                    Gerencia: 
                    <%
                     ArrayList<Gerencia> listaGerencia = ( ArrayList<Gerencia>) request.getAttribute("listaG");
                    %>
                    <select name="gerencia"  onchange="enviar();">
                        <option value="0">Elija una opción</option>    
                  <%
                     for(Gerencia g: listaGerencia){
                     %>
                     <option value="<%=g.getId()%>"><%=g.getNombre()%></option>
                     <%
                     }
                  %>
                    
                    </select><br>
                    Depto:<select name="depto">
                        <option value="0">Carga depende de Gerencia</option>    
                    </select><br>
                    Asignar a:<br>
                    Encargado:<br>
                    Requerimiento:<br>
                    
                </div>
            </form>
                  
            <form method="post" action="combogerencia" >
            <div class="input_text">   
                <input type="submit" value="Guardar" name ="btn_guardar">      
            </form>
                  
            <form method="get" action="menu.jsp" >
              
                <input type="submit" value="Volver a menu" name ="btn_menu">      
            </form>
                  
            </div>
         </div>
    </body>
</html>

