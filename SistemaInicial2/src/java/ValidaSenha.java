
import javax.faces.bean.ManagedBean;


@ManagedBean
public class ValidaSenha {
    private String us, snh, res;

    private String logins[]= {"admin", "joao","tereza", "arnaldo", 
                             "ronaldo"};
    private String senhas[]= {"1234", "12345", "123", "12", 
                             "54321"};
    
    public String getUs() {
        return us;
    }

    public void setUs(String us) {
        this.us = us;
    }

    public String getSnh() {
        return snh;
    }

    public void setSnh(String snh) {
        this.snh = snh;
    }

    public String getRes() {
        return res;
    }

    public void setRes(String res) {
        this.res = res;
    }
    
    public void validacao(){
        int i=0;
        int c =0;
        while(i<5){
            if(logins[i].equals(us) && senhas[i].equals(snh)){
                res = "logado";
                i=5;
                c=1;
            }
            i++;
        }//fim while
        if(c==0){
            res = "usuário ou senha invalidos";
        }
        
       
    }
}
