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
      
       
      <center><h2>Lista de clientes cadastrados</h2></center>
      
      <table id="tablef" border="1" align="center">
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
                <%int i=0,j=0;%>
                <%for(Fornecedor f: Fornecedor.getList()){%>
                <tr>
                    <td><%=i%></td>
                    <td><input type="text" id="tdnome<%=i%>" value="<%= f.getNome()%>"/></td>
                    <td><input type="text" id="tdrazao<%=i%>" value="<%= f.getRazaoSocial()%>"/></td>
                    <td><input type="number" id="tdcnpj<%=i%>" size="14" maxlength="14" value="<%= f.getCnpj()%>"/></td>
                    <td><input type="email" id="tdemail<%=i%>" value="<%= f.getEmail()%>"/></td>
                    <td><input type="number" id="tdtelefone<%=i%>" value="<%= f.getTelefone()%>"/></td>
                    <td><input type="text" id="tdendereco<%=i%>" value="<%= f.getEndereco()%>"/></td>
                
                    <td>
                        <form>
                            <input type="hidden" id="indexalt" name="indexalt" value="<%=(j++)%>"/>
                           
                            <input type="button" name="altfornecedor" value="Alterar" onclick="passarAtributos(this.form.indexalt.value)"/>
                        </form>    
                    </td>
                    <td>
                        <form>
                            <input type="hidden" name="indexdel" value="<%=(i++)%>"/>
                            <input type="submit" name="delfornecedor" value="Excluir"/>
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
            var msg ;
            var flagBool;
            function passarAtributos(indice){
                
                flag = confirm("Deseja realmente alterar o registro?");
                
                if (flagBool) {
                msg = document.getElementById('tdnome'+indice).value;
                document.getElementById('idnome').value = msg;
                
                msg = document.getElementById('tdrazao'+indice).value;
                document.getElementById('idrazao').value = msg;
                
                msg = document.getElementById('tdcnpj'+indice).value;
                document.getElementById('idcnpj').value = msg;
                
                msg = document.getElementById('tdemail'+indice).value;
                document.getElementById('idemail').value = msg;
                
                msg = document.getElementById('tdtelefone'+indice).value;
                document.getElementById('idtelefone').value = msg;
                
                msg = document.getElementById('tdendereco'+indice).value;
                document.getElementById('idendereco').value = msg;
                
                document.getElementById('idindex').value = indice;
                
                
                
                document.getElementById('idadd').click();
                }
                
                else {
                    
                }
                //alert(msg);
            }
            
            
            
            
        </script>
        
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
