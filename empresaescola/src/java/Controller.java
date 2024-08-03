import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;

@ManagedBean
public class Controller {
    //objeto funcionarios do tipo ControllerFuncionarios(rf, nome,
    //cpf, telefone e email)
      private Funcionarios funcionarios = new Funcionarios();
      String resultado="";
      ModelFuncionarios mf = new ModelFuncionarios();
      private List<Funcionarios> lista = new ArrayList<>();
    //------------------------------------------------------------  
    public void cadastra() throws SQLException{
        mf.CadastraFuncionario(funcionarios);
        resultado = "Cadastrado com sucesso!";
        busca();
    }
    
    public void busca() throws SQLException{
        mf.getBuscaFuncionario();
        resultado = "ok!";        
    }
   //------------------------------------------------------------
    public List<Funcionarios> getLista() {
        return lista;
    }

    public void setLista(List<Funcionarios> lista) {
        this.lista = lista;
    }      
      
//---------------------------------------------------------------
    public String getResultado() {
        return resultado;
    }

    public void setResultado(String resultado) {
        this.resultado = resultado;
    }
//---------------------------------------------------------------
    //Get e set para ControllerFuncionarios
    public Funcionarios getFuncionarios() {
        return funcionarios;
    }

    public void setFuncionarios(Funcionarios funcionarios) {
        this.funcionarios = funcionarios;
    }
//--------------------------------------------------------------- 
}
