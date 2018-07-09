<%-- 
    Document   : produto2
    Created on : 30/05/2018, 09:56:00
    Author     : Jaque
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../Estilos/Cadastros.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form method="post" action="${pageContext.request.contextPath}/FormularioServlet">
            <div>
            <h1 align="center">
            <img src="wine-glass.png" alt="" width="100px" height="100px" float="left"/>
            Cadastro de Uvas 
            </h1>
            </div>
            <label for="id"> ID: </label>
            <input type="text" name="idUva"/>
            </br>
            <label for="nome"> Nome: </label>
            <input type="text" name="nomeUva"/>
            </br>
            <label for="produtor"> Produtor: </label>
            <input type="text" name="produtorUva"/>
            </br>
            <label for="paisDeOrigem"> Pais de Origem: </label>
            <input type="text" name="paisDeOrigemUva"/>
            </br>
            <input type="submit" name="ok"/>
        </form>
    </body>
</html>
