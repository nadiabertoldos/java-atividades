package com.mycompany.poo_pesoideal;
import java.util.*;

public class pesoIdeal {
    private double altura, pesoideal;
    private char sexo;
    
    public pesoIdeal (){
        altura = 0;
        pesoideal = 0;
        sexo = 0;
    }
    
    public void forneceValores(){
        Scanner leitor = new Scanner(System.in);
    
        System.out.print("Digite seu sexo: \nM para Masculino \nF para Feminino");
        sexo = leitor.nextLine().charAt(sexo);

        System.out.println("Digite sua altura: ");
        altura = leitor.nextDouble();
    
    }
    
    public void calcula(){
        switch (sexo){
                case 'M':
                    pesoideal = (62.1*altura)-44.7;

                case 'F':
                    pesoideal = (72.7*altura)-58.7;

                default:
                    System.out.println("\nDigitar apenas M ou F");
                    break;
            }    
    }   
    
    public void exibir(){
        System.out.println("Seu peso ideal é " + String.format("%.2f", pesoideal)+ "kg ");
    }   
}
