    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd"> 
     
      
    <html>  
    <head> 
    <link rel="stylesheet" href="style.css" /> 
    <title>Tabela Itens Venda</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.itv_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  

         }else if (document.cadastro.ven_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo vendas'; 

         }else if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo produto';  
            
         }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo produto';  

         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nota fiscal';  

         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento';  

         }else if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo funcionario';     

         }else if (document.cadastro.itv_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo embalagem';    

         }else if (document.cadastro.itv_qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo quantidade';    

         }else if (document.cadastro.itv_valorunField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor unidade';    

         }else if (document.cadastro.itv_descField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo descricao';    

         }else if (document.cadastro.itv_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';    

         }else {  
            document.cadastro.action='cadastrar_itensvenda.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.itv_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='consultar_itensvenda.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.itv_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  

         }else if (document.cadastro.ven_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo vendas'; 

         }else if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo produto';  
            
         }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo produto';  

         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nota fiscal';  

         }else if (document.cadastro.tpg_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo tipo pagamento';  

         }else if (document.cadastro.fun_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo funcionario';     

         }else if (document.cadastro.itv_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo embalagem';    

         }else if (document.cadastro.itv_qtdeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo quantidade';    

         }else if (document.cadastro.itv_valorunField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor unidade';    

         }else if (document.cadastro.itv_descField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo descricao';    

         }else if (document.cadastro.itv_valortotalField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor total';    

         }else {  
            document.cadastro.action='alterar_itensvenda.jsp';  
            document.cadastro.submit();  
         }  

      } else if (par == 'excluir'){  
     
         if (document.cadastro.itv_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='excluir_itensvenda.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_itensvenda.jsp';  
         document.cadastro.submit();  
      }  
   }  
     
   </script>  
     
   <meta http-equiv="Content-Type" content="text/html; charset=iso--">    
  
   </head>  
     
   <%  
   String itv_codigo = request.getParameter("itv_codigo");  
   String ven_codigo = request.getParameter("ven_codigo");  
   String pro_codigo = request.getParameter("pro_codigo"); 
   String tpp_codigo = request.getParameter("tpp_codigo");  
   String nf_codigo = request.getParameter("nf_codigo"); 
   String tpg_codigo = request.getParameter("tpg_codigo");
   String fun_codigo = request.getParameter("fun_codigo");  
   String itv_embalagem = request.getParameter("itv_embalagem");  
   String itv_qtde = request.getParameter("itv_qtde"); 
   String itv_valorun = request.getParameter("itv_valorun");
   String itv_desc = request.getParameter("itv_desc"); 
   String itv_valortotal = request.getParameter("itv_valortotal");  
   String status = request.getParameter("status");  
   %>  
     
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" background = "1.jpg"><p align="center"> Cadastro itens venda </p>
       </td>  
     </tr>  
     <tr>  
       <td height="">
         <p> 
         <strong>Codigo:</strong>  
         <input name="itv_codigoField" type="text" id="itv_codigoField" size="" value="<%=(itv_codigo==null)?"":itv_codigo%>">  
         </p> 
            
         <p> 
         <strong>Codigo venda:</strong>  
         <input name="ven_codigoField" type="text" id="ven_codigoField" size="" value="<%=(ven_codigo==null)?"":ven_codigo%>">  
         </p> 

         <p> 
         <strong>Codigo produto:</strong>  
         <input name="pro_codigoField" type="text" id="pro_codigoField" size="" value="<%=(pro_codigo==null)?"":pro_codigo%>">  
         </p> 

         <p> 
         <strong>Codigo tipo produto:</strong>  
         <input name="tpp_codigoField" type="text" id="tpp_codigoField" size="" value="<%=(tpp_codigo==null)?"":tpp_codigo%>">  
         </p> 

         <p> 
         <strong>Codigo nota fiscal:</strong>   
         <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">  
         </p>   
         
          <p> 
         <strong>Codigo tipo pagamento:</strong>   
         <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>">  
         </p> 

         <p> 
         <strong>Codigo funcionario:</strong>   
         <input name="fun_codigoField" type="text" id="fun_codigoField" size="" value="<%=(fun_codigo==null)?"":fun_codigo%>">  
         </p>   

         <p> 
         <strong>Embalagem:</strong>   
         <input name="itv_embalagemField" type="text" id="itv_embalagemField" size="" value="<%=(itv_embalagem==null)?"":itv_embalagem%>">  
         </p>   

         <p> 
         <strong>Quantidade:</strong>   
         <input name="itv_qtdeField" type="text" id="itv_qtdeField" size="" value="<%=(itv_qtde==null)?"":itv_qtde%>">  
         </p>   

         <p> 
         <strong>Valor unidade:</strong>   
         <input name="itv_valorunField" type="text" id="itv_valorunField" size="" value="<%=(itv_valorun==null)?"":itv_valorun%>">  
         </p>      
         
         <p> 
         <strong>Descricao:</strong>   
         <input name="itv_descField" type="text" id="itv_descField" size="" value="<%=(itv_desc==null)?"":itv_desc%>">  
         </p>   

         <p> 
         <strong>Valor total:</strong>   
         <input name="itv_valortotalField" type="text" id="itv_valortotalField" size="" value="<%=(itv_valortotal==null)?"":itv_valortotal%>">  
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