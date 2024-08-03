import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ModelAlunos{
   
    public void CadastraAluno(Alunos al) throws SQLException{
        //abrindo o banco
        escolaconexao ec = new escolaconexao();
        Connection conexao = ec.getConexao();
        //armazenando o comando do SQL em uma variável
       
        String cad = "insert into funcionarios (cpf, nome) values" + "('"+al.getCpf()+"', '"+al.getNome()+"')";       
        String cadcont = "insert into contato(telefone,"+"email) values " + "('"+al.getTelefone()+"', '"+al.getEmail()+"')";
        //inserindo o comando SQL no banco de dados
        PreparedStatement ps = conexao.prepareStatement(cad);        
        PreparedStatement pscont = conexao.prepareStatement(cadcont);
        
        //executando o comando
        ps.executeUpdate();
        pscont.executeUpdate();
    }//fim CadastraFuncionario ----------------------------
    
    public List<Alunos> getBuscaAlunos() throws SQLException{
        //abrindo o banco
        escolaconexao ec = new escolaconexao();
        Connection conexao = ec.getConexao();
        String busca = "select * from Alunos inner join contato" + "on contato.contatoalunos = alunos.cpf";
        PreparedStatement ps = conexao.prepareStatement(busca);
        ResultSet rs = ps.executeQuery();
        List<Alunos> alunlist = new ArrayList<>();
        while(rs.next()){
            Alunos alun = new Alunos();
            alun.setNome(rs.getString("nome"));
            alun.setCpf(rs.getString("cpf"));
            alun.setTelefone(rs.getString("telefone"));
            alun.setEmail(rs.getString("email")); 
            alunlist.add(alun);
        }
        return alunlist;
    }
}
