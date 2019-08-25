<%-- 
    Document   : ingreso
    Created on : 24-ago-2019, 21:50:26
    Author     : Carlos
--%>

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
                //var sel = document.getElementById('gerencia');
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
            <form action="ComboGerencia" method="post" id="form1">
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
                    [Guardar] [Volver al Menu]
                </div>
            </form>
         </div>
    </body>
</html>

