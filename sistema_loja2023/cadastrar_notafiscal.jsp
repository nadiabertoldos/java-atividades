 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_notafiscal.Conexao_notafiscal"/>  

 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar</title>  
 <link rel="stylesheet" href="style.css" /> 
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="notafiscal.jsp">  
   
 <p><strong>Tabela - Nota Fiscal </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
   <tr>  
      <td width=100><strong>Codigo</strong></td> 
	   <td width=100><strong>Valor</strong></td> 	
      <td width=100><strong>Taxa de imposto</strong></td>      
      <td width=100><strong>Valor do imposto</strong></td>  
   </tr>  
   
   
 <%      
    try {  
   
       con.setNf_codigo(Integer.parseInt(request.getParameter("nf_codigoField")));  
       con.setNf_valornf(request.getParameter("nf_valornfField"));  
       con.setNf_taxaimpostonf(request.getParameter("nf_taxaimpostonfField"));  
	    con.setNf_valorimposto(request.getParameter("nf_valorimpostoField"));  
       con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("nf_codigoField").equals(temp.getString("nf_codigo")))  
          response.sendRedirect("http://localhost:8084/sistema_loja2023/notafiscal.jsp?status=Registro ja existente");  
         
       do{  
       %>  
       <tr>  
           <td width=100><%out.print(temp.getString("nf_codigo"));%></td>  
           <td width=100><%out.print(temp.getString("nf_valornf"));%></td>  
           <td width=100><%out.print(temp.getString("nf_taxaimpostonf"));%></td> 
			  <td width=100><%out.print(temp.getString("nf_valorimposto"));%></td>
       </tr>  
       <%}while (temp.next());  
      
    }catch (Exception e) {  
       e.printStackTrace();  
    }  
      
 %>  
 </table>  
   <p> </p>  
   <p>  
     <input type="submit" name="Submit" value="voltar">  
   </p>    
   <p><strong>Status:  
      <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("nf_codigoField")%> foi cadastrado com sucesso">  
   </strong></p>  
 </form>  
 </body>  
 </html> 