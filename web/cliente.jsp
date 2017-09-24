<%-- 
    Document   : cliente
    Created on : 23/09/2017, 21:35:57
    Author     : Raul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - JSP Page</title>
    </head>
    <body>
    <center><h1>Cadastro de clientes</h1></center>
        <div>
            <fieldset>
                <legend>Cadastro de clientes</legend>
                <div align="center">
                    <form name="frmCliente" method="POST">
                        Nome:
                        <input type="text" name="txtCliente" placeholder="Digite seu nome"/>
                        CPF:
                        <input type="number" name="txtCPF" placeholder="Digite seu CPF"/><br/><br/>
                        RG:
                        <input type="number" name="txtRG" placeholder="Digite seu RG"/>
                        E-mail:
                        <input type="text" name="txtEmail" placeholder="Digite seu email"/><br/><br/>
                        Telefone:
                        <input type="number" name="txtTelefone" placeholder="Digite seu telefone"/>
                        Endereço:
                        <input type="text" name="txtEndereco" placeholder="Digite seu endereço"/><br/><br/>
                        <input type="submit" name="btnAdicionar" value="Adicionar"/>
                    </form>
                </div>
            </fieldset>
        </div>
    </body>
</html>
