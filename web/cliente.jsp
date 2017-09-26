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
        <title>Cadastro de Clientes</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <center><h1>Cadastro de Clientes</h1></center>
        <%
            try
            {
                if (request.getParameter("btnExcluir") != null)
                {
                    int indice = Integer.parseInt(request.getParameter("indiceExcluir"));
                    Cliente.getCliente().remove(indice);
                    response.sendRedirect(request.getRequestURI());
                }
                else if(request.getParameter("btnAdicionar") != null)
                {
                    int i = -1;
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
                    i = Integer.parseInt(request.getParameter("txtIndice"));
                    if (i < 0)
                    {
                        Cliente.getCliente().add(cl);
                        response.sendRedirect(request.getRequestURI());
                    }
                    else if (i >= 0)
                    {
                        Cliente.getCliente().set(i, cl);
                        response.sendRedirect(request.getRequestURI());
                    }
                                       
                    
                }   
                    
               
            }
            catch(Exception ex){%>
                    <div>Erro ao processar o form.</div>                
            <%}%>            
            
            <%@ include file="WEB-INF/jspf/inputcliente.jspf"%>
            
        <center><h2>Lista de clientes cadastrados</h2></center>
        
        <table id="idTabelaCliente" class="table table-striped" align = "center">
            <tr>
                <th>Índice</th>
                <th>Nome do cliente</th>
                <th>CPF</th>
                <th>RG</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Alterar</th>
                <th>Excluir</th>
            </tr>
            
            <%try{%>
            <%int i = 0;%>
            <%for (Cliente cl: Cliente.getCliente()){%>
            <tr>
                <td><%=i%></td>
                    <td><input class="form-control" type="text" id="tdCliente<%=i%>" value="<%= cl.getNome()%>" /></td>
                    <td><input class="form-control" type="text" id="tdCPF<%=i%>" value="<%= cl.getCpf()%>" pattern="\d{3}\.\d{3}\.\d{3}/\d{2}"/></td>
                    <td><input class="form-control" type="text" id="tdRG<%=i%>" value="<%= cl.getRg()%>" pattern="\d{2}\.\d{3}\.\d{3}-\d{1}"/></td>
                    <td><input class="form-control" type="email" id="tdEmail<%=i%>" value="<%= cl.getEmail()%>"/></td>
                    <td><input class="form-control" type="text" id="tdTel<%=i%>" value="<%= cl.getTelefone()%>" pattern="\([0-9]{2}\)[\s][0-9]{4}-[0-9]{4}"/></td>
                    <td><input class="form-control" type="text" id="tdEndereco<%=i%>" value="<%= cl.getEndereço()%>"/></td>
                  
                
                <td>
                    <form>
                        <input type="hidden" id="indiceAlt" name="indiceAlt" value="<%=(i)%>"/>
                        <button type="button" class="btn btn-primary" name="btnAlterar" value="Alterar" onclick="passarValores(this.form.indiceAlt.value);">Alterar</button>
                    </form>
                </td>
                
                <td>
                    <form>
                        <input type="hidden" name="indiceExcluir" value="<%=(i++)%>"/>
                        <button type="submit" class="btn btn-primary" name="btnExcluir" value="Excluir">Excluir</button>
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
        
        <script javascript>
            var mensagem ;
            var flagBoolc;
            function passarValores(indicec){
                
                flagBoolc = confirm("Deseja realmente alterar o registro?");
                
                if (flagBoolc) {
                mensagem = document.getElementById('tdCliente'+indicec).value;
                document.getElementById('idCliente').value = mensagem;
                
                mensagem = document.getElementById('tdCPF'+indicec).value;
                document.getElementById('idCPF').value = mensagem;
                
                mensagem = document.getElementById('tdRG'+indicec).value;
                document.getElementById('idRG').value = mensagem;
                
                mensagem = document.getElementById('tdEmail'+indicec).value;
                document.getElementById('idEmail').value = mensagem;
                
                mensagem = document.getElementById('tdTel'+indicec).value;
                document.getElementById('idTelefone').value = mensagem;
                
                mensagem = document.getElementById('tdEndereco'+indicec).value;
                document.getElementById('idEndereco').value = mensagem;
                
                document.getElementById('idIndice').value = indicec;
                
                
                
                document.getElementById('idAdicionar').click();
                }
                
                else
                {
                    
                }
                
                
    }          
        
        
        </script>
        
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
