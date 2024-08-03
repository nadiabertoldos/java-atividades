<%@ page contentType="text/html" language="java" import="java.sql.*" %>
   <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <jsp:useBean id="con" class="conexao_contapagar.Conexao_contapagar" />
   <html>

   <head>
      <title>Excluir</title>
      <link rel="stylesheet" href="style.css" />
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
   </head>

   <body>
      <form name="form1" method="post" action="contapagar.jsp">

         <p><strong>Tabela Conta pagar </strong></p>
         <table border=1 cellspacing=0 cellpadding=0>

            <tr>
               <td width=50><strong>
                     Codigo
                  </strong></td>
               <td width=50><strong>
                     Valor conta
                  </strong></td>
               <td width=50><strong>
                     Data vencimento
                  </strong></td>
               <td width=50><strong>
                     Data pagamento
                  </strong></td>
               <td width=50><strong>
                     Codigo nota fiscal
                  </strong></td>
               <td width=50><strong>
                     Observacoes
                  </strong></td>
            </tr>


            <% try { con.setCp_codigo(Integer.parseInt(request.getParameter("cp_codigoField"))); if (con.excluirDados())
               { con.setConsulta(); ResultSet temp=con.getResultado(); while (temp.next()){ %>
               <tr>
                  <td width=50>
                     <%out.print(temp.getString("cp_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("cp_valorconta"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("cp_datavencimento"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("cp_datapagamento"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("nf_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("cp_observacoes"));%>
                  </td>
               </tr>
               <%} } else{ response.sendRedirect("http://localhost:8084/sistema_loja2023/contapagar.jsp?status=Registro
                  nao encontrado"); } }catch (Exception e) { e.printStackTrace(); } %>
         </table>
         <p> </p>
         <p>
            <input type="submit" name="Submit" value="voltar">
         </p>
         <p><strong>Status:
               <input name="statusField" disabled type="text" id="statusField" size="36"
                  value="<%=request.getParameter(" cp_codigoField")%> foi excluido com sucesso">
            </strong></p>
      </form>
   </body>

   </html>