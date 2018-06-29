<%-- 
    Document   : CadastroUva
    Created on : Apr 27, 2018, 9:29:25 AM
    Author     : angelodezoti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Cadastro Tipo da Uva
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
            ID Uva:
            <input type="text" name="idUva"></br>
            Nome da Uva:
            <input type="text" name="NomeUva"></br>
            Produtor:
            <input type="text" name="Produtor"><br>
        </form>
    </body>

</html>
