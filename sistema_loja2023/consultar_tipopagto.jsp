 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_tipopagto.Conexao_tipopagto"/> 
 <html>  
 <head>  
 <title>Consulta</title>
 <link rel="stylesheet" href="style.css" />   
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setTpg_codigo(Integer.parseInt(request.getParameter("tpg_codigoField"))); 
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_loja2023/tipopagto.jsp?status=Consulta efetuada com sucesso&tpg_codigo="+  
             temp.getString("tpg_codigo")
			 +"&tpg_descricao="+temp.getString("tpg_descricao")			 
          +"&tpg_qtde="+temp.getString("tpg_qtde")
          +"&tpg_ativo="+temp.getString("tpg_ativo"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja2023/tipopagto.jsp?status=Registro nao encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 