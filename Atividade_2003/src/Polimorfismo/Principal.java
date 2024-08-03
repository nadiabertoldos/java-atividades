package Polimorfismo;

/**
 *
 * @author nadia
 */
public class Principal {
    
    public static void main(String[] args) {
        
        Animal a = new Animal();
        Mamifero m = new Mamifero();
        Cachorro c = new Cachorro();

        nasceAnimal (a);
        nasceAnimal (m);
        nasceAnimal (c);
        
    }
    
    static void nasceAnimal (Animal AN){
        System.out.println(AN.nasce());
    }
}

