<%@ page contentType="text/html" language="java" import="java.sql.*" %>
   <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <jsp:useBean id="con" class="conexao_tipoproduto.Conexao_tipoproduto" />
   <html>

   <head>
      <title>Listar</title>
      <link rel="stylesheet" href="style.css" /> 
      <meta http-equiv="Content-Type" content="text/html; charset=iso--">
   </head>

   <body>
      <form name="form" method="post" action="tipoproduto.jsp">

         <p><strong>Tabela tipo produto </strong></p>
         <table border=1 cellspacing=0 cellpadding=0>

            <tr>
               <td width=50><strong>
                     Codigo
                  </strong></td>
               <td width=50><strong>
                     Descricao
                  </strong></td>
            </tr>


            <% try { con.setConsulta(); ResultSet temp=con.getResultado(); while (temp.next()){ %>
               <tr>
                  <td width=50>
                     <%out.print(temp.getString("tpp_codigo"));%>
                  </td>
                  <td width=50>
                     <%out.print(temp.getString("tpp_descricao"));%>
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