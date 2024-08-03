
import javax.faces.bean.ManagedBean;

@ManagedBean
public class Principal {
   private int v1, v2, soma=0;
   private String n, r;

    public String getR() {
        return r;
    }

    public void setR(String r) {
        this.r = r;
    }

    public String getN() {
        return n;
    }

    public void setN(String n) {
        this.n = n;
    }

    public int getV1() {
        return v1;
    }

    public void setV1(int v1) {
        this.v1 = v1;
    }

    public int getV2() {
        return v2;
    }

    public void setV2(int v2) {
        this.v2 = v2;
    }

    public int getSoma() {
        return soma;
    }

    public void setSoma(int soma) {
        this.soma = soma;
    }
   
    public void result(){
        for(int i=v1; i<v2;i++){
            soma = soma+1;
        }
    }
    public void calcula(){
        r=n;
        
    }
   
}
