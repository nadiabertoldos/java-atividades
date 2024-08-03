import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ModelFuncionarios {
   
    public void CadastraFuncionario(Funcionarios cf) throws SQLException{
        //abrindo o banco
        escolaconexao ec = new escolaconexao();
        Connection conexao = ec.getConexao();
        //armazenando o comando do SQL em uma variável
        String cad = "insert into funcionarios (cpf, nome,"+" salario, departamento) values" + "('"+cf.getCpf()+"', '"+cf.getNome()+"','"+cf.getSalario()+"','"+cf.getDepartamento()+"')";       
        String cadcont = "insert into contato(telefone,"+"email,contatofuncionario) values " + "('"+cf.getTelefone()+"', '"+cf.getEmail()+"','"+cf.getCpf()+"')";
        
        //inserindo o comando SQL no banco de dados
        PreparedStatement ps = conexao.prepareStatement(cad);        
        PreparedStatement pscont = conexao.prepareStatement(cadcont);
        
        //executando o comando
        ps.executeUpdate();
        pscont.executeUpdate();
    }//fim CadastraFuncionario ----------------------------
    
    public List<Funcionarios> getBuscaFuncionario() throws SQLException{
        //abrindo o banco
        escolaconexao ec = new escolaconexao();
        Connection conexao = ec.getConexao();
        String busca = "select * from funcionarios inner join contato" + "on contato.contatofuncionario = funcionarios.cpf";
        PreparedStatement ps = conexao.prepareStatement(busca);
        ResultSet rs = ps.executeQuery();
        List<Funcionarios> funclist = new ArrayList<>();
        while(rs.next()){
            Funcionarios func = new Funcionarios();
            func.setNome(rs.getString("nome"));
            func.setCpf(rs.getString("cpf"));
            func.setSalario(rs.getString("salário"));
            func.setDepartamento(rs.getString("departamento"));
            func.setTelefone(rs.getString("telefone"));
            func.setEmail(rs.getString("email")); 
            funclist.add(func);
        }
        return funclist;
    }
}
