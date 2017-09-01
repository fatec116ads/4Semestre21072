<%-- 
    Document   : consultaUsuario
    Created on : 25/08/2017, 19:48:39
    Author     : ProfAlexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Usuario</title>
    </head>
    <body>
        <form name="consultarUsuario" action="validaConsultarUsuario.jsp" method="post">
            Nome =: <input type="text" name ="NOME" value=""> <br>
            <input type="submit" name ="Enviar" value="Enviar"> <br>
        </form>
    </body>
</html>
