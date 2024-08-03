package com.mycompany.pooheranca_empresa;

public class funcionario extends cliente{
    public String nome;
    public double salario;
    
    funcionario (){
        super();
    }
    funcionario(String tipo){
        super(tipo);
    }
    
    public void listar() { 
        String saida = "\nTipo:" + tipo;
        saida += "\nNome:" + nome;
        saida += "\nSalário:" + salario;
        saida += "\nRua:" + rua + "\nEmail:" + email; 
        System.out.println(saida ); 
    }
}
