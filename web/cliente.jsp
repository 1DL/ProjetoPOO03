<%-- 
    Document   : cliente
    Created on : 23/09/2017, 21:35:57
    Author     : Raul
--%>


<%@page import="br.com.projeto03.fatec.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - JSP Page</title>
    </head>
    <body>
        <center><h1>Cadastro de clientes</h1></center>
        <%
            try
            {
                if (request.getParameter("btnExcluir") != null)
                {
                    int indice = Integer.parseInt(request.getParameter("index"));
                    Cliente.getCliente().remove(indice);
                    response.sendRedirect(request.getRequestURI());
                }
                else if(request.getParameter("btnAdicionar") != null)
                {
                    String nome = request.getParameter("txtCliente");
                    String CPF =  request.getParameter("txtCPF");
                    String RG = request.getParameter("txtRG");
                    String email = request.getParameter("txtEmail");
                    String telefone = request.getParameter("txtTelefone");
                    String endereco = request.getParameter("txtEndereco");
                    Cliente cl = new Cliente();
                    cl.setNome(nome);
                    cl.setCpf(CPF);
                    cl.setRg(RG);
                    cl.setEmail(email);
                    cl.setTelefone(telefone);
                    cl.setEndereço(endereco);
                    Cliente.getCliente().add(cl);

                    response.sendRedirect(request.getRequestURI());
                    
                }   
                    
               
            }
            catch(Exception ex){%>
                    <div>Erro ao processar o form.</div>                
            <%}%>            
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
                            <input type="email" name="txtEmail" placeholder="cliente@dominio.com"/><br/><br/>
                            Telefone:
                            <input type="number" name="txtTelefone" placeholder="Digite seu telefone"/>
                            Endereço:
                            <input type="text" name="txtEndereco" placeholder="Digite seu endereço"/><br/><br/>
                            <input type="submit" name="btnAdicionar" value="Adicionar"/>
                        </form>
                    </div>
                </fieldset>
            </div>
            
        <center><h2>Lista de clientes cadastrados</h2></center>
        
        <table border='1' align = "center">
            <tr>
                <th>Índice</th>
                <th>Nome do cliente</th>
                <th>CPF</th>
                <th>RG</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Exclusão</th>
                <th>Alteração</th>
            </tr>
            
            <%try{%>
            <%int i = 0;%>
            <%for (Cliente cl: Cliente.getCliente()){%>
            <tr>
                <td><%=i%></td>
                <td><%=cl.getNome()%></td>
                <td><%=cl.getCpf()%></td>
                <td><%=cl.getRg()%></td>
                <td><%=cl.getEmail()%></td>
                <td><%=cl.getTelefone()%></td>
                <td><%=cl.getEndereço()%></td>    
                
                <td>
                    <form>
                        <input type="hidden" name="index2" value="<%=(i)%>"/>
                        <input type="submit" name="btnAlterar" value="Alterar"/>
                    </form>
                </td>
                
                <td>
                    <form>
                        <input type="hidden" name="index" value="<%=(i++)%>"/>
                        <input type="submit" name="btnExcluir" value="Excluir"/>
                    </form>
                </td>
                
                
            </tr>
            <%}%>
            
             <%}catch(Exception ex)
            {%>
                <tr>
                    <td colspan = "5">
                        Erro ao carregar a lista: <%=ex.getMessage()%>
                    </td>
                </tr>
            
            <%}%> 
        </table>
    </body>
</html>
