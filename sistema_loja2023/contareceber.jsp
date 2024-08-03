    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd"> 
     
      
    <html>  
    <head> 
    <link rel="stylesheet" href="style.css" /> 
    <title>Tabela Conta Receber</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.cr_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  

         }else if (document.cadastro.cr_valorcontaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor da conta'; 

         }else if (document.cadastro.cr_datavencimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data de vencimento';  
            
         }else if (document.cadastro.cr_datarecebimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data de recebimento';  

         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nota fiscal';  

         }else if (document.cadastro.cr_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo de observacoes';     

         }else {  
            document.cadastro.action='cadastrar_contareceber.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.cr_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='consultar_contareceber.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.cr_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  

         }else if (document.cadastro.cr_valorcontaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo valor da conta'; 

         }else if (document.cadastro.cr_datavencimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data de vencimento';  
            
         }else if (document.cadastro.cr_datarecebimentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data de recebimento';  

         }else if (document.cadastro.nf_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo nota fiscal';  

         }else if (document.cadastro.cr_observacoesField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo de observacoes';     

         }else {  
            document.cadastro.action='alterar_contareceber.jsp';  
            document.cadastro.submit();  
         }  

      } else if (par == 'excluir'){  
     
         if (document.cadastro.cr_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='excluir_contareceber.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_contareceber.jsp';  
         document.cadastro.submit();  
      }  
   }  
     
   </script>  
     
   <meta http-equiv="Content-Type" content="text/html; charset=iso--">    
  
   </head>  
     
   <%  
   String cr_codigo = request.getParameter("cr_codigo");  
   String cr_valorconta = request.getParameter("cr_valorconta");  
   String cr_datavencimento = request.getParameter("cr_datavencimento");  
   String cr_datarecebimento = request.getParameter("cr_datarecebimento"); 
   String nf_codigo = request.getParameter("nf_codigo");  
   String cr_observacoes = request.getParameter("cr_observacoes"); 
   String status = request.getParameter("status");  
   %>  
     
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" background = "1.jpg"><p align="center"> Cadastro conta receber </p>
       </td>  
     </tr>  
     <tr>  
       <td height="">
         <p> 
         <strong>Codigo:</strong>  
         <input name="cr_codigoField" type="text" id="cr_codigoField" size="" value="<%=(cr_codigo==null)?"":cr_codigo%>">  
         </p> 
            
         <p> 
         <strong>Valor da conta:</strong>  
         <input name="cr_valorcontaField" type="text" id="cr_valorcontaField" size="" value="<%=(cr_valorconta==null)?"":cr_valorconta%>">  
         </p> 
 
         <p> 
         <strong>Data de vencimento:</strong>   
         <input name="cr_datavencimentoField" type="text" id="cr_datavencimentoField" size="" value="<%=(cr_datavencimento==null)?"":cr_datavencimento%>">  
         </p> 
         
         <p> 
         <strong>Valor de recebimento:</strong>   
         <input name="cr_datarecebimentoField" type="text" id="cr_datarecebimentoField" size="" value="<%=(cr_datarecebimento==null)?"":cr_datarecebimento%>">  
         </p>     
         
         <p> 
         <strong>Codigo nota fiscal:</strong>   
         <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">  
         </p>   

         <p> 
         <strong>Observacoes:</strong>   
         <input name="cr_observacoesField" type="text" id="cr_observacoesField" size="" value="<%=(cr_observacoes==null)?"":cr_observacoes%>">  
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