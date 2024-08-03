
package aula03;

import javax.swing.JOptionPane;


public class Calculo {
    
    public void Soma(double a, double b){
        
        double result =  a + b;
        JOptionPane.showMessageDialog(null, result);
        
    }//fim_soma
    
    //metódo subtração com retorno 
    public double getSubtracao (double a, double b){
        
        double sub = a - b;
        return sub;
        
    }
    
    public void multiplicar (double a, double b){
        
        double mult = a * b;
         JOptionPane.showMessageDialog(null, mult);
    
    }
    
    public double getdividir(double a, double b){
        
        double div = a / b;
        return div;
        
    }
    
}
