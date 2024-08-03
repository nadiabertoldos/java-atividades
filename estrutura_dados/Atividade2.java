
package javaapplication1;

import javax.swing.JOptionPane;

public class Atividade2 {
    //Método são funcionalidades do sistema
    /*Divisão do método;
    >>Moderador de acesso;
     >>> public - qualquer funcionaliade do sistema pode acessar 
     >>> private - exclusivo à classe que se encontra
     >>> protected - quando trabalhamos com herança
   >>Retorno dos dados - quando coloca-se void não tem retorno
   >>Nome do método 
   >>Parâmetros - entradas de dados no método;
    */
    static double resultado;
    public static void soma(double a, double b){
        resultado = a + b;
        Print();
    }
    public static void main(String[] args){
        //chamada de método
        soma(12.3, 45);
        subtracao(5, 10);
    }
    
    //método sem passagem de parâmetros
    public static void Print(){
        JOptionPane.showMessageDialog(null, resultado);
    }
    public static void subtracao(double a, double b){
        resultado = a - b;
        Print();
    }
    
    
    
}
