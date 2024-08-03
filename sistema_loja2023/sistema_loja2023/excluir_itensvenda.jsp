<%@ page contentType="text/html" language="java" import="java.sql.*" %>
   <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <jsp:useBean id="con" class="conexao_itensvenda.Conexao_itensvenda" />
   <html>

   <head>
      <title>Excluir</title>
      <link rel="stylesheet" href="style.css" />
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
   </head>

   <body>
      <form name="form1" method="post" action="itensvenda.jsp">

         <p><strong>Tabela itens venda </strong></p>
         <table border=1 cellspacing=0 cellpadding=0>

            <tr>
               <td width=50><strong>
                     Codigo
                  </strong></td>
               <td width=50><strong>
                     Codigo produto
                  </strong></td>
               <td width=50><strong>
                     Codigo tipo produto
                  </strong></td>
               <td width=50><strong>
                     Nota Fiscal Codigo
                  </strong></td>
               <td width=50><strong>
                     Codigo tipo pagamento
                  </strong></td>
               <td width=50><strong>
                     Funcionario codigo
                  </strong></td>
               <td width=50><strong>
                     Embalagem
                  </strong></td>
               <td width=50><strong>
                     Quantidade
                  </strong></td>
               <td width=50><strong>
                     Valor unidade
                  </strong></td>
               <td width=50><strong>
                     Descricao
                  </strong></td>
               <td width=50><strong>
                     Valor total
                  </strong></td>
            </tr>


            <% try { con.setItv_codigo(Integer.parseInt(request.getParameter("itv_codigoField"))); if
               (con.excluirDados()) { con.setConsulta(); ResultSet temp=con.getResultado(); while (temp.next()){ %>
               <tr>
                  <td width=50>
                     <%out.print(temp.getString("itv_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("pro_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("tpp_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("nf_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("tpg_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("fun_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("itv_embalagem"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("itv_qtde"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("itv_valorun"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("itv_desc"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("itv_valortotal"));%>
                  </td>
               </tr>
               <%} } else{ response.sendRedirect("http://localhost:8084/sistema_loja2023/itensvenda.jsp?status=Registro nao encontrado"); } }catch (Exception e) { e.printStackTrace(); } %>
         </table>
         <p> </p>
         <p>
            <input type="submit" name="Submit" value="voltar">
         </p>
         <p><strong>Status:
               <input name="statusField" disabled type="text" id="statusField" size="36"
                  value="<%=request.getParameter(" itv_codigoField")%> foi excluido com sucesso">
            </strong></p>
      </form>
   </body>

   </html>