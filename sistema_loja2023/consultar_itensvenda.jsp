 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_itensvenda.Conexao_itensvenda"/> 
 <html>  
 <head>  
 <title>Consulta</title> 
 <link rel="stylesheet" href="style.css" />  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setItv_codigo(Integer.parseInt(request.getParameter("itv_codigoField"))); 
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_loja2023/itensvenda.jsp?status=Consulta efetuada com sucesso&itv_codigo="+  
             temp.getString("itv_codigo")
          +"&pro_codigo="+temp.getString("pro_codigo")
			 +"&tpp_codigo="+temp.getString("tpp_codigo")			 
          +"&nf_codigo="+temp.getString("nf_codigo")        
          +"&tpg_codigo="+temp.getString("tpg_codigo")
          +"&fun_codigo="+temp.getString("fun_codigo")
          +"&itv_embalagem="+temp.getString("itv_embalagem")
          +"&itv_qtde="+temp.getString("itv_qtde")
			 +"&itv_valorun="+temp.getString("itv_valorun")
          +"&itv_desc="+temp.getString("itv_desc")
          +"&itv_valortotal="+temp.getString("itv_valortotal"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja2023/itensvenda.jsp?status=Registro nao encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 