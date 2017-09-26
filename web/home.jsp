<%-- 
    Document   : home
    Created on : Sep 23, 2017, 9:40:04 PM
    Author     : LuizV1
--%>

<%@page import="br.com.projeto03.fatec.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - Sistema de Cadastro de Clientes e Fornecedores</title>        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
        
        <!-- tag responsiva -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
  
        <header>
                            
               
                <div class="p-3 mb-2 bg-white text-gray-dark" align = "center">
                    <div class="p-3 mb-2 bg-white text-gray-dark">
                        <legend>
                            <h1>Programação Orientada a Objetos - Terceiro projeto</h1> 
                            <h2>Proposta:</h2>
                            <font face ="verdana" size="3"><b>Esta aplicação web tem como 
                                    objetivo cadastrar registros de Clientes e Fornecedores localmente.
                                Possui a funcionalidade de listar, apagar, e alterar os registros
                                salvos em memória.</b>
                            </font>
                        </legend>
                        <hr>   
                                        
                    
                        <h1>Integrantes: </h1><br/>                        
                        <h4>
                            <img class="rounded mx-auto d-block" src="imagens/luiz.jpg" alt="Luiz Henrique">
                            Luiz Henrique - <a href="https://github.com/1DL">@1DL</a>
                        </h4>
                            <br/>
                        <h4>
                            <img class="rounded mx-auto d-block" src="imagens/raul.jpg" alt="Luiz Henrique">
                            Raul Tomaz - <a href="https://github.com/RaulTomaz">@RaulTomaz</a>
                        </h4>
                            <br/>
                        <h4>
                            <img src="imagens/github.png" alt="Logo do Github"><br/>
                            <a href="https://github.com/1DL/ProjetoPOO03">Ir Para o repositório do GitHub</a>
                        </h4>
                    </div> 
                </div>
        
        </header>
        
        <%@include file="WEB-INF/jspf/footer.jspf"%>
                
    </body>
</html>
