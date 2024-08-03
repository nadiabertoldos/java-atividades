
package aula03;

import javax.swing.JOptionPane;


public class principal {
    
    public static void main(String [] args){
        
        Calculo c = new Calculo();
        
        c.Soma(45, 46);
        
        
        double resultado = c.getSubtracao(45, 40);
        JOptionPane.showMessageDialog(null, resultado);
        
        c.multiplicar(45,50);
        
        double result = c.getdividir(45, 20);
        JOptionPane.showMessageDialog(null, result);
        
    }
    
}
