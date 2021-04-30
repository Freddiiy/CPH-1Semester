import java.util.ArrayList;

public class Bibliotek {
    public ArrayList books = new ArrayList();

    public boolean compare (Bog x, Bog y) {
        if (x.getISBN().equals(y.getISBN())) {
            return true;
        } else {
            return false;
        }
    }
}
