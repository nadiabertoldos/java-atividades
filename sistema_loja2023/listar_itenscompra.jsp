<%@ page contentType="text/html" language="java" import="java.sql.*" %>
   <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <jsp:useBean id="con" class="conexao_itenscompra.Conexao_itenscompra" />
   <html>

   <head>
      <title>Listar</title>
      <link rel="stylesheet" href="style.css" /> 
      <meta http-equiv="Content-Type" content="text/html; charset=iso--">
   </head>

   <body>
      <form name="form1" method="post" action="itenscompra.jsp">

         <p><strong>Tabela itens compra </strong></p>
         <table border=1 cellspacing=0 cellpadding=0>

            <tr>
               <td width=50><strong>
                     Codigo
                  </strong></td>
               <td width=50><strong>
                     Codigo compra
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
                     Codigo fornecedor
                  </strong></td>
               <td width=50><strong>
                     Codigo tipo pagamento
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


            <% try { con.setConsulta(); ResultSet temp=con.getResultado(); while (temp.next()){ %>
               <tr>
                  <td width=50>
                     <%out.print(temp.getString("itc_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("com_codigo"));%>
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
                     <%out.print(temp.getString("for_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("tpg_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("itc_embalagem"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("itc_qtde"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("itc_valorun"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("itc_desc"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("itc_valortotal"));%>
                  </td>
               </tr>
               <%} }catch (Exception e) { e.printStackTrace(); } %>
         </table>
         <p>
            <input type="submit" name="Submit" value="voltar">
         </p>
      </form>
   </body>

   </html>