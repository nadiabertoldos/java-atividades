 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_compras.Conexao_compras"/> 
 <html>  
 <head>  
 <title>Consulta</title> 
 <link rel="stylesheet" href="style.css" />  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setCom_codigo(Integer.parseInt(request.getParameter("com_codigoField"))); 
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_loja2023/compras.jsp?status=Consulta efetuada com sucesso&com_codigo="+  
             temp.getString("com_codigo")
			 +"&tpg_codigo="+temp.getString("tpg_codigo")			 
          +"&for_codigo="+temp.getString("for_codigo")
          +"&nf_codigo="+temp.getString("nf_codigo")
          +"&com_datacompra="+temp.getString("com_datacompra")
          +"&com_valortotal="+temp.getString("com_valortotal")
			 +"&com_observacoes="+temp.getString("com_observacoes"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja2023/compras.jsp?status=Registro nao encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 