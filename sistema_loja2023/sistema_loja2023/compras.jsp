    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd"> 
     
      
    <html>  
    <head> 
    <link rel="stylesheet" href="style.css" /> 
    <title>Tabela Compras</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  

         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento'; 

         }else if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo do fornecedor';  
            
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo da nota fiscal';  

         }else if (document.cadastro.com_datacompraField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data compra';  

         }else if (document.cadastro.com_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';     

         }else if (document.cadastro.com_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo observacoes';     

         }else {  
            document.cadastro.action='cadastrar_compras.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='consultar_compras.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  

         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento'; 

         }else if (document.cadastro.for_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo do fornecedor';  
            
         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo da nota fiscal';  

         }else if (document.cadastro.com_datacompraField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data compra';  

         }else if (document.cadastro.com_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';     

         }else if (document.cadastro.com_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo observacoes';     

         }else {  
            document.cadastro.action='alterar_compras.jsp';  
            document.cadastro.submit();  
         }  

      } else if (par == 'excluir'){  
     
         if (document.cadastro.com_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='excluir_compras.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_compras.jsp';  
         document.cadastro.submit();  
      }  
   }  
     
   </script>  
     
   <meta http-equiv="Content-Type" content="text/html; charset=iso--">    
  
   </head>  
     
   <%  
   String com_codigo = request.getParameter("com_codigo");  
   String tpg_codigo = request.getParameter("tpg_codigo");  
   String for_codigo = request.getParameter("for_codigo");  
   String nf_codigo = request.getParameter("nf_codigo"); 
   String com_datacompra = request.getParameter("com_datacompra");  
   String com_valortotal = request.getParameter("com_valortotal"); 
   String com_observacoes = request.getParameter("com_observacoes"); 
   String status = request.getParameter("status");  
   %>  
     
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" background = "1.jpg"><p align="center"> Cadastro compras </p>
       </td>  
     </tr>  
     <tr>  
       <td height="">
         <p> 
         <strong>Codigo:</strong>  
         <input name="com_codigoField" type="text" id="com_codigoField" size="" value="<%=(com_codigo==null)?"":com_codigo%>">  
         </p> 
            
         <p> 
         <strong>Codigo tipo pagamento:</strong>  
         <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>">  
         </p> 
 
         <p> 
         <strong>Codigo fornecedor:</strong>   
         <input name="for_codigoField" type="text" id="for_codigoField" size="" value="<%=(for_codigo==null)?"":for_codigo%>">  
         </p> 
          
         <p> 
         <strong>Codigo nota fiscal:</strong>   
         <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">  
         </p>   

         <p> 
         <strong>Data compra:</strong>   
         <input name="com_datacompraField" type="text" id="com_datacompraField" size="" value="<%=(com_datacompra==null)?"":com_datacompra%>">  
         </p>   

         <p> 
         <strong>Valor total:</strong>   
         <input name="com_valortotalField" type="text" id="com_valortotalField" size="" value="<%=(com_valortotal==null)?"":com_valortotal%>">  
         </p>   

         <p> 
         <strong>Observacoes:</strong>   
         <input name="com_observacoesField" type="text" id="com_observacoesField" size="" value="<%=(com_observacoes==null)?"":com_observacoes%>">  
         </p>      


      </td>  
    </tr>  
    <tr>  
      <td height=""><p>   
          <input class="botao" type="button" onClick="enviar('cadastrar')" name="bt" value="Cadastrar">  
          <input class="botao" type="button" onClick="enviar('consultar')" name="bt" value="Consultar">  
          <input class="botao" type="button" onClick="enviar('alterar')" name="bt" value="Alterar">  
          <input class="botao" type="button" onClick="enviar('excluir')" name="bt" value="Excluir">  
          <input class="botao" type="button" onClick="enviar('listar')" name="bt" value="Listar">  
        </p>  
        <p> <strong>Status:  
     <input class="status" name="statusField" disabled type="text" id="statusField" size="" value="<%=(status==null)?"":status%>">  
        </strong></p>  
     </td>  
    </tr>  
  </table>  
  </form>  
  </body>  
  </html>  