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
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            try{
                /*if (request.getParameter("delfornecedor")!=null){
                    int i = Integer.parseInt(request.getParameter("index"));
                    Fornecedor.getList().remove(i);
                    response.sendRedirect(request.getRequestURI());//Retira parametros depois de executar uma tarefa
                }else */if(request.getParameter("addfornecedor")!=null){
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
                    Fornecedor.getList().add(f);
                    response.sendRedirect(request.getRequestURI());
                }
            
                
            }catch(Exception ex) {}        
        %>
        
      <%@ include file="WEB-INF/jspf/inputfornecedor.jspf"%>

      <table border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
            </tr>
            <%try{%>
                <%int i=0;%>
                <%for(Fornecedor f: Fornecedor.getList()){%>
                <tr>
                    <td><%= i %></td>
                    <td><%= f.getNome()%></td>
                    <td><%= f.getRazaoSocial()%></td>
                    <td><%= f.getCnpj()%></td>
                    <td><%= f.getEmail()%></td>
                    <td><%= f.getTelefone()%></td>
                    <td><%= f.getEndereco()%></td>
                    <td>
                        <form>
                            <input type="hidden" name="index" value="<%=(i++)%>"/>
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
    </body>
</html>
