<%-- 
    Document   : Pagina01
    Created on : Apr 27, 2018, 9:25:42 AM
    Author     : angelodezoti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>
            Cadastro Tipo do Vinho
        </title>
    </head>

    <body>
        <form> 

            <input type="text" name="Pesquisa" value="Campo de pesquisa">
            <input type="submit" name="buscar" value="Buscar">
            <input type="submit" name="listar" value="Listar">
            <input type="submit" name="editar" value="Editar">
            <input type="submit" name="deletar" value="Deletar">
            
            <br>
            ID Tipo:
            <input type="text" name="idTipo"></br>
           
            Tipo:
            <input type="text" name="Tipo"></br>
        </form>
    </body>

</html>