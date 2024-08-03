//package com.mycompany.poo_poligono;
import java.util.*;

public class poligono {
    private int lados;
       
    Scanner entrada = new Scanner(System.in);
    
    public poligono(){
        lados = 0;
    }
    
    public void entrada(){
        System.out.println("Digite o número de lados do polígono: ");
        lados = entrada.nextInt();
    
    }
    
    public void calcula(){    
        if (lados < 3){
            System.out.println("Não é um polígono");
        } 
        else if (lados == 3){
            double areatri, basetri, alturatri;
            System.out.println("Este é um triângulo");
            System.out.println("Digite o valor da base do triângulo: ");
            basetri = entrada.nextDouble();
            System.out.println("Digite a altura do triângulo: ");
            alturatri = entrada.nextDouble();
            areatri = (basetri * alturatri) / 2;
            System.out.println("A área do triângulo é: " + areatri);
        } 
        else if (lados == 4){
            double areaquad, ladoquad;
            System.out.println("Este é um quadrado");
            System.out.println("Digite o valor do lado do quadrado: ");
            ladoquad = entrada.nextDouble();
            areaquad = Math.pow(ladoquad, 2);
            System.out.println("A área do quadrado é: " + areaquad);
        } 
        else if (lados == 5){
            double areapent, ladopent, apotema;
            System.out.println("Este é um pentágono");
            System.out.println("Digite o valor do lado do pentágono: ");
            ladopent = entrada.nextDouble();
            System.out.println("Digite o valor da apótema do pentágono: ");
            apotema = entrada.nextDouble();
            areapent = 5 * ladopent * apotema;
            System.out.println("A área do pentágono é: " + areapent);
        } 
        else {
        System.out.println("Polígono não previsto");
        }   
    }
}	