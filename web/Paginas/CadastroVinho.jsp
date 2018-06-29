<%-- 
    Document   : CadastroVinho
    Created on : Apr 27, 2018, 9:29:43 AM
    Author     : angelodezoti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Cadastro Vinho
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
            ID Vinho:
            <input type="text" name="idVinho"></br>
            Nome do Vinho:
            <input type="text" name="nomeVinho"></br>
            Tipo do Vinho:
            <input type="text" name="tipoDoVinho"><br>
            Paí­s de Origem:
            <input type="text" name="paisDeOrigem"><br>
            Tipo de Uva:
            <input type="text" name="tipoDeUva"><br>
            Teor Alcóolico:
            <input type="text" name="teorAlcoolico"><br>
            Volume da Garrafa: 
            <input type="text" name="volumeDaGarrafa"><br>
            Preço:
            <input type="text" name="preco"><br>
        </form>
    </body>

</html>
