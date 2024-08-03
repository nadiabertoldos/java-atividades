<%@ page contentType="text/html" language="java" import="java.sql.*" %>
   <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <jsp:useBean id="con" class="conexao_contareceber.Conexao_contareceber" />
   <html>

   <head>
      <title>Listar</title>
      <link rel="stylesheet" href="style.css" /> 
      <meta http-equiv="Content-Type" content="text/html; charset=iso--">
   </head>

   <body>
      <form name="form" method="post" action="contareceber.jsp">

         <p><strong>Tabela Conta receber </strong></p>
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
                     Data recebimento
                  </strong></td>
               <td width=50><strong>
                     Codigo Nota fiscal
                  </strong></td>
               <td width=50><strong>
                     Observacoes
                  </strong></td>
            </tr>


            <% try { con.setConsulta(); ResultSet temp=con.getResultado(); while (temp.next()){ %>
               <tr>
                  <td width=50>
                     <%out.print(temp.getString("cr_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("cr_valorconta"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("cr_datavencimento"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("cr_datarecebimento"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("nf_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("cr_observacoes"));%>
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