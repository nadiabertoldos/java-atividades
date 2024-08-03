package Herança;

/**
 *
 * @author nadia
 */
public class CadastraPessoa {
     public static void main(String[] args) {
        PessoaFisica PF = new PessoaFisica();
        PF.nome = "Nadia";
        PF.CPF = 12345;
        PF.endereço = "Rua Antonio Vieira, 280";
        PF.telefone = 54321;
        
        System.out.println(PF.Pessoa());
    }
}
