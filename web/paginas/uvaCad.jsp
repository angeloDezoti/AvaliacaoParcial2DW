<%-- 
    Document   : UvaCad
    Created on : 05/07/2018, 16:54:15
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Estilos/Cadastros.css" rel="stylesheet" type="text/css"/>
        <title> FastWine </title>
    </head>
    <body>
        <div> <h1> Cadastro Uva </h1></div>
        <form action="${pageContext.request.contextPath}/cadUva"> 
            <p> 
                <label for="idUva"> ID Uva: </label>
                <input type="text" name="idUva" value="" />
                <label for="nome"> Nome: </label>
                <input type="text" name="nome" value="" />
                <label for="produtor"> Produtor: </label>
                <input type="text" name="produtor" value="" />
                <label for="paisDeOrigem"> PaisDeOrigem: </label>
                <input type="text" name="paisDeOrigem" value="" />
                <input type="submit" value="Enviar" />
            </p>
            
        
        </form>
    </body>
</html>
