public class Main {

    public static void main(String[] args) {
        Bog fanden = new Bog("123456789", "Fanden", 1997);
        Bog lummert = new Bog("123467899999", "lummert", 1995);
        Bog fandenBareNy = new Bog("123456789", "FandenBareNy", 2019);
        Bibliotek bibliotek = new Bibliotek();
        bibliotek.compare(fanden, lummert);
        System.out.println(bibliotek.compare(fanden, lummert));
        System.out.println(bibliotek.compare(fanden, fandenBareNy));
    }
}
