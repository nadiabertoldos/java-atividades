
package aula2;
import javax.swing.JOptionPane;

public class Aula2 {
    /*variáveis declaradas dentro da classe são chamadas de variáveis globais, 
    ou seja, podem ser utilizadas em qualquer ação ou função nesta classe*/
    
    /*declaração de variáveis
    primeiro vem tipo (String, int, double,...)
    seguindo pelo nome da variável*/
    static String nome="Nadia", sobrenome="Bertoldo";
    static int idade;
    static double salario;
    static boolean funcionario;                                                

    public static void main(String[] args) {
    
    /*declaração de variáveis dentro dos métodos (funcionalidades) são chamadas 
    de variáveis locais,ou seja, só podem ser utilizadas dentro do ambiente ao 
    qual foi criada*/ 
    
     nome = JOptionPane.showInputDialog("Digite seu nome");
     idade = Integer.parseInt(JOptionPane.showInputDialog("Digite sua idade"));
    
     //Fazendo os cálculos
     nome = nome + " Silva";
             
     //Imprimindo o valor
     JOptionPane.showMessageDialog(null, nome + " - " + idade + " anos");
             
    }
    
}
