package com.mycompany.pooheranca_empresa;

public class POOHeranca_Empresa {

    public static void main(String[] args) {
        empresa e1 = new empresa(); 
        e1.tipo = "Empresa";
        e1.email = "xxxx@xxxx.com.br";
        e1.rua = "Nome da rua";
        e1.listar ( ) ;
    
    	empresa e2 = new empresa ( "Empresa");
    	e2.email = "xxxx@xxxx.com.br";   
    	System.out.println ( e2.email );  
   	System.exit(0);
        
        funcionario f = new funcionario();
        f.tipo = "Funcionário";
        f.nome = "Nome Funcionário";
        f.email = "xxxx@xxxx.com.br";
        f.rua = "Nome da rua";
        f.salario = 0.0;
        f.listar();
    }
}

