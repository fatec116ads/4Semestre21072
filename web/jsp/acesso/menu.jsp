<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatec.bean.Usuario"%>
<%@page import="br.com.fatec.controler.UsuarioControler"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario usu = new Usuario(0,"",login,senha,"","");
    UsuarioControler usucont = new UsuarioControler();
    usu = usucont.validaUsuario(usu);
    session.setAttribute("UsuarioLogado",usu);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MENU</title>
    </head>
    <% if (usu != null) { %>    
        <body>
        <h1>Nome =  <%=usu.getNome()%></h1>
        <h1>Login =  <%=usu.getLogin()%></h1>
        <h1>Senha =  <%=usu.getSenha()%></h1>
        <h1>Status = <%=usu.getStatus()%></h1>
        <h1>Tipo =   <%=usu.getTipo()%></h1>
        <a href="../usuario/inserirUsuario.jsp">Inserir Usuario</a> <br>
        <a href="../usuario/consultarUsuario.jsp">Consultar Usuario</a>
    <% } else { %>

    <h1>Usuário e/ou senha incorretos</h1>
    <a href="login.jsp">Login</a>
    <% } %>
    </body>
</html>
