 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_itenscompra.Conexao_itenscompra"/>
 <html>  
 <head>  
 <title>Consulta</title> 
 <link rel="stylesheet" href="style.css" />  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setItc_codigo(Integer.parseInt(request.getParameter("itc_codigoField"))); 
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_loja2023/itenscompras.jsp?status=Consulta efetuada com sucesso&itc_codigo="+  
             temp.getString("itc_codigo")
          +"&com_codigo="+temp.getString("com_codigo")
          +"&pro_codigo="+temp.getString("pro_codigo")
			 +"&tpp_codigo="+temp.getString("tpp_codigo")			 
          +"&nf_codigo="+temp.getString("nf_codigo")
          +"&for_codigo="+temp.getString("for_codigo")
          +"&tpg_codigo="+temp.getString("tpg_codigo")
          +"&itc_embalagem="+temp.getString("itc_embalagem")
          +"&itc_qtde="+temp.getString("itc_qtde")
			 +"&itc_valorun="+temp.getString("itc_valorun")
          +"&itc_desc="+temp.getString("itc_desc")
          +"&itc_valortotal="+temp.getString("itc_valortotal"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja2023/itenscompra.jsp?status=Registro nao encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 