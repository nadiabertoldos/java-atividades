import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class escolaconexao {
    Connection con;

    public Connection getConexao(){
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection
        ("jdbc:mysql://localhost:3306/empresaescola", "root", "root");
        }catch(SQLException e){           
        }catch(ClassNotFoundException erro){
        }
        return con;
    }
}
