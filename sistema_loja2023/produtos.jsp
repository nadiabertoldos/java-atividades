    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd"> 
     
      
    <html>  
    <head> 
    <link rel="stylesheet" href="style.css" /> 
    <title>Tabela Produtos</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  

         }else if (document.cadastro.pro_descricaoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo descricao';  
            
         }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo produto';  

         }else if (document.cadastro.pro_precocustoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo preco custo';  

         }else if (document.cadastro.pro_precovendaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo preco venda';  

         }else if (document.cadastro.pro_estoqueField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo estoque';     

         }else if (document.cadastro.pro_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo embalagem';    

         }else if (document.cadastro.pro_ipiField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo IPI';    

         }else {  
            document.cadastro.action='cadastrar_produtos.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='consultar_produtos.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  

         }else if (document.cadastro.pro_descricaoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo descricao';  
            
         }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo produto';  

         }else if (document.cadastro.pro_precocustoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo preco custo';  

         }else if (document.cadastro.pro_precovendaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo preco venda';  

         }else if (document.cadastro.pro_estoqueField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo estoque';     

         }else if (document.cadastro.pro_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo embalagem';    

         }else if (document.cadastro.pro_ipiField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo IPI';    

         }else {  
            document.cadastro.action='alterar_produtos.jsp';  
            document.cadastro.submit();  
         }  

      } else if (par == 'excluir'){  
     
         if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='excluir_produtos.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_produtos.jsp';  
         document.cadastro.submit();  
      }  
   }  
     
   </script>  
     
   <meta http-equiv="Content-Type" content="text/html; charset=iso--">    
  
   </head>  
     
   <%  
   String pro_codigo = request.getParameter("pro_codigo");  
   String pro_descricao = request.getParameter("pro_descricao"); 
   String tpp_codigo = request.getParameter("tpp_codigo");  
   String pro_precocusto = request.getParameter("pro_precocusto"); 
   String pro_precovenda = request.getParameter("pro_precovenda");
   String pro_estoque = request.getParameter("pro_estoque");  
   String pro_embalagem = request.getParameter("pro_embalagem");  
   String pro_ipi = request.getParameter("pro_ipi"); 
   String status = request.getParameter("status");  
   %>  
     
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" background = "1.jpg"><p align="center"> Cadastro produtos </p>
       </td>  
     </tr>  
     <tr>  
       <td height="">
         <p> 
         <strong>Codigo:</strong>  
         <input name="pro_codigoField" type="text" id="pro_codigoField" size="" value="<%=(pro_codigo==null)?"":pro_codigo%>">  
         </p> 
            
         <p> 
         <strong>Descricao:</strong>  
         <input name="pro_descricaoField" type="text" id="pro_descricaoField" size="" value="<%=(pro_descricao==null)?"":pro_descricao%>">  
         </p> 

         <p> 
         <strong>Codigo tipo produto:</strong>  
         <input name="tpp_codigoField" type="text" id="tpp_codigoField" size="" value="<%=(tpp_codigo==null)?"":tpp_codigo%>">  
         </p> 

         <p> 
         <strong>Preco custo:</strong>   
         <input name="pro_precocustoField" type="text" id="pro_precocustoField" size="" value="<%=(pro_precocusto==null)?"":pro_precocusto%>">  
         </p>   
         
          <p> 
         <strong>Preco venda:</strong>   
         <input name="pro_precovendaField" type="text" id="pro_precovendaField" size="" value="<%=(pro_precovenda==null)?"":pro_precovenda%>">  
         </p> 

         <p> 
         <strong>Estoque:</strong>   
         <input name="pro_estoqueField" type="text" id="pro_estoqueField" size="" value="<%=(pro_estoque==null)?"":pro_estoque%>">  
         </p>   

         <p> 
         <strong>Embalagem:</strong>   
         <input name="pro_embalagemField" type="text" id="pro_embalagemField" size="" value="<%=(pro_embalagem==null)?"":pro_embalagem%>">  
         </p>   

         <p> 
         <strong>IPI:</strong>   
         <input name="pro_ipiField" type="text" id="pro_ipiField" size="" value="<%=(pro_ipi==null)?"":pro_ipi%>">  
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