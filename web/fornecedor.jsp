<%-- 
    Document   : fornecedor
    Created on : Sep 24, 2017, 7:42:07 PM
    Author     : LuizV1
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="br.com.projeto03.fatec.Fornecedor"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Fornecedores</title>
    </head>
    <body>
       <%@include file="WEB-INF/jspf/header.jspf" %>

<% 
            try{             
                if(request.getParameter("addfornecedor")!=null){
                    int i = -1;
                    String nome = request.getParameter("txtnome");
                    String razaoSocial = request.getParameter("txtrazao");
                    String cnpj = request.getParameter("txtcnpj");
                    String email = request.getParameter("txtemail");
                    String telefone = request.getParameter("txttelefone");
                    String endereco = request.getParameter("txtendereco");
                    Fornecedor f = new Fornecedor();
                    f.setNome(nome);
                    f.setRazaoSocial(razaoSocial);
                    f.setCnpj(cnpj);
                    f.setEmail(email);
                    f.setTelefone(telefone);
                    f.setEndereco(endereco);
                    i = Integer.parseInt(request.getParameter("txtindex"));
                    if (i < 0) {
                        Fornecedor.getList().add(f);
                        response.sendRedirect(request.getRequestURI());
                    }else if (i >= 0) {
                        Fornecedor.getList().set(i, f);
                        response.sendRedirect(request.getRequestURI());
                            }
                } else if (request.getParameter("delfornecedor")!=null){
                    int i = Integer.parseInt(request.getParameter("indexdel"));
                    Fornecedor.getList().remove(i);
                    response.sendRedirect(request.getRequestURI());//Retira parametros depois de executar uma tarefa
                
                }/* else if (request.getParameter("altfornecedor")!=null) {
                    int j = Integer.parseInt(request.getParameter("indexalt"));
                    String nome = request.getParameter("tdnome"+j);
                    
                    String razaoSocial = request.getParameter("txtrazao");
                    int cnpj = Integer.parseInt(request.getParameter("txtcnpj"));
                    String email = request.getParameter("txtemail");
                    int telefone = Integer.parseInt(request.getParameter("txttelefone"));
                    String endereco = request.getParameter("txtendereco");
                    Fornecedor f = new Fornecedor();
                    f.setNome(nome);
                    f.setRazaoSocial(razaoSocial);
                    f.setCnpj(cnpj);
                    f.setEmail(email);
                    f.setTelefone(telefone);
                    f.setEndereco(endereco);
                    
                    Fornecedor.getList().set(j, f);
                    response.sendRedirect(request.getRequestURI());
                }*/
                
            }catch(Exception ex) {}
            
            
        %>
        
      <%@ include file="WEB-INF/jspf/inputfornecedor.jspf"%>
      
       
      <center><h2>Lista de fornecedores cadastrados</h2></center>
      
      <table id="tablef" class="table table-striped">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Alterar</th>
                <th>Excluir</th>               
            </tr>
            <%try{%>
                <%int i=0;%>
                <%for(Fornecedor f: Fornecedor.getList()){%>
                <tr>
                    <td><%=i%></td>
                    <td><input class="form-control" type="text" id="tdnome<%=i%>" value="<%= f.getNome()%>"/></td>
                    <td><input class="form-control" type="text" id="tdrazao<%=i%>" value="<%= f.getRazaoSocial()%>"/></td>
                    <td><input class="form-control" type="text" id="tdcnpj<%=i%>" size="14" maxlength="14" value="<%= f.getCnpj()%>"/></td>
                    <td><input class="form-control" type="email" id="tdemail<%=i%>" value="<%= f.getEmail()%>"/></td>
                    <td><input class="form-control" type="text" id="tdtelefone<%=i%>" value="<%= f.getTelefone()%>"/></td>
                    <td><input class="form-control" type="text" id="tdendereco<%=i%>" value="<%= f.getEndereco()%>"/></td>
                
                    <td>
                        <form>
                            <input type="hidden" id="indexalt" name="indexalt" value="<%=(i)%>"/>
                           
                            <button type="button" class="btn btn-primary" name="altfornecedor" value="Alterar" onclick="passarAtributos(this.form.indexalt.value)">Alterar</button>
                        </form>    
                    </td>
                    <td>
                        <form>
                            <input type="hidden" name="indexdel" value="<%=(i++)%>"/>
                            <button type="submit" class="btn btn-primary" name="delfornecedor" value="Excluir">Excluir</button>
                        </form>
                </tr>
                <%}%>
            <%}catch (Exception ex2) {%>
            <tr>
                <td colspan="7">
                    Erro ao carregar a lista: <%=ex2.getMessage()%>
                </td>
            </tr>
            <%}%>
        </table>
        
         <script javascript>
            var msgf ;
            var flagBoolf;
            function passarAtributos(indicef){
                
               flagBoolf = confirm("Deseja realmente alterar o registro?");
                
                if (flagBoolf) {
                msgf = document.getElementById('tdnome'+indicef).value;
                document.getElementById('idnome').value = msgf;
                
                msgf = document.getElementById('tdrazao'+indicef).value;
                document.getElementById('idrazao').value = msgf;
                
                msgf = document.getElementById('tdcnpj'+indicef).value;
                document.getElementById('idcnpj').value = msgf;
                
                msgf = document.getElementById('tdemail'+indicef).value;
                document.getElementById('idemail').value = msgf;
                
                msgf = document.getElementById('tdtelefone'+indicef).value;
                document.getElementById('idtelefone').value = msgf;
                
                msgf = document.getElementById('tdendereco'+indicef).value;
                document.getElementById('idendereco').value = msgf;
                
                document.getElementById('idindex').value = indicef;
                
                
                
                document.getElementById('idadd').click();
                }
                
                else {
                    
                }
                
                
                //alert(msg);
            }
            
            
            
            
        </script>
        
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
