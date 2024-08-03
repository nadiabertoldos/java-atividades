//package com.mycompany.poo_pesoideal;
import java.util.Scanner;

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
        char sexo = leitor.nextLine().charAt(0);

        System.out.println("Digite sua altura: ");
        altura = leitor.nextDouble();    
    }
    
    public void calcula(){
        if sexo = "M" || sexo = "m"{
            pesoideal = (72.7*altura)-58.7;
        }
        else if sexo = "F" || sexo = "f"{
            pesoideal = (62.1*altura)-44.7;
        }
    }   
    
    public void exibir(){
        System.out.println("Seu peso ideal é " + String.format("%.2f", pesoideal)+ "kg ");
    }   
}
