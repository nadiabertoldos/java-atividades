//package com.mycompany.pooheranca_empresa;

public class empresa extends cliente{
    
    public String razão_social;
    public double faturamento;
    
    empresa ( ) { 
        super();  
    }    
    empresa ( String tipo ) { 
        super ( tipo ); 
    } 

    public void listar() { 
        String saida = "\nTipo:" + tipo;
        saida += "\nRazão:" + razão_social;
        saida += "\nFaturamento:" + faturamento;
        saida += "\nRua:" + rua + "\nEmail:" + email; 
        System.out.println(saida ); 
    }
}
