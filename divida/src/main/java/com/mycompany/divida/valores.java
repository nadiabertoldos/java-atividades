package com.mycompany.divida;

import java.util.Scanner;

public class valores {
    private double divida, pgto, juros, multa;
    private int dias;
    
    public valores(){
        divida = 0;
        pgto = 0;
        juros = 0;
        multa = 0;
    }
    
    public void forneceValores(){
        Scanner leitor = new Scanner (System.in);

        System.out.println("Insira o valor devido: ");
        pgto = leitor.nextDouble();
        System.out.println("Insira a quantidade de dias em atraso: ");
        dias = leitor.nextInt();
    }
    
    public void calcula(){
        juros = pgto * 0.01 * (dias/30);
        multa = pgto * 0.02;
        divida = pgto + juros + multa;
    }
    
    public void resultado(){
        System.out.println("O valor dos juros sobre sua dívida é de " + String.format("%.2f", juros));
        System.out.println("O valor da multa sobre sua dívida é de " + String.format("%.2f", multa));
        System.out.println("O valor da sua dívida é de: R$ " + String.format("%.2f", divida));
    }
}
