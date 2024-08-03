
import javax.faces.bean.ManagedBean;


@ManagedBean
public class Classeinicial {
    private String nome, sexo, cidade, resultado;
    private int idade;
    private double seguro;

    public double getSeguro() {
        return seguro;
    }

    public void setSeguro(double seguro) {
        this.seguro = seguro;
    }
     
    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    

    public String getResultado() {
        return resultado;
    }

    public void setResultado(String resultado) {
        this.resultado = resultado;
    }
    
    public void calculo(){
        
        if(idade < 25){
          double a;
          a = (seguro * 20) / 100;
          seguro = a + seguro;
            
        }
        if (idade >= 25 && idade < 35){
         double a;
         a = (seguro * 10) / 100;
         seguro = a + seguro;
        }
        if ("Diadema".equals(cidade)){
            double a;
            a = (seguro * 10) / 100;
            seguro = a + seguro;
        }
        if ("São Bernardo".equals(cidade)){
            double a;
            a = (seguro * 20) / 100;
            seguro = a + seguro;
        }
        if ("São Caetano".equals(cidade)){
            double a;
            a = (seguro * 5) / 100;
            seguro = a + seguro;
        }
        if ("Santo André".equals(cidade)){
            double a;
            a = (seguro * 15) / 100;
            seguro = a + seguro;
        }
        if ("Feminino".equals(sexo)){
            double a;
            a = (seguro * 5) / 100;
            seguro =  seguro - a;
    }
        resultado = nome +" o valor do seu seguro é: " +seguro;
    }
    
    
}
