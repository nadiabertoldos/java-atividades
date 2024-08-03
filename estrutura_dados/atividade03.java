
package javaapplication1;

import javax.swing.JOptionPane;


public class atividade03 {
    public static void main(String[] args) {
       
        setSub(45, 90.8);
        double a = getSub();
        JOptionPane.showMessageDialog(null, a);
       
    }//fim main
    //variável global
    static double resultado;
    //método setter
    public static void setSub(double a, double b) {
    resultado = a - b;
    }//fim setsoma
    
    //método getter
    public static double getSub(){
        return resultado;
    }
}//fim class
