import java.util.ArrayList;
import java.util.Comparator;

public class Main {

    public static void main(String[] args) {
/*        ArrayList<String> words = new ArrayList<>();
        arrayList(words, "balls");
        arrayList(words, "abe");
        arrayList(words, "cookie");
        arrayList(words, "balls");
        arrayList(words, "fandago");*/


    }
    //ArrayList
    //Skriv en metode, der modtager 2 parametre: en arrayliste og en streng.
    //
    //Metoden skal gøre følgende:
    //•	Indsætte strengen i arraylisten, hvis den ikke findes i listen i forvejen. Ellers gøres ingenting med streng og arrayliste.
    //•	returnere værdien true, hvis strengen er blevet indsat i arraylisten.  Ellers false.
    //•	Inddrag fejlhåndtering i din løsning, således at null  værdier undgås i arraylisten
    //•	Hold listen sorteret.
    public static boolean arrayList(ArrayList<String> words, String input) {
        boolean check;
        if(input == null) {
            input = "";
        }
        if (!words.contains(input)) {
            words.add(input);
            check = true;
        } else {check = false;}
        words.sort(Comparator.naturalOrder());

        for (int i = 0; i < words.size(); i++) {
            String s = words.get(i);
            System.out.println(s);
        }
        System.out.println(check + "\n");
        return check;
    }
    //Bog
    //Skriv en klasse kaldet Bog, der indeholder ISBN-nummer, titel og udgivelsesår.
    //Skriv flg. metoder:
    //•	Konstruktør metode
    //•	Get og set metoder
    //•	toString metode
    //•	Skriv en equals metode baseret på ISBN
    //
    //Skriv en klasse kaldet Bibliotek, der indeholder en liste af Bog objekter.
    //•	Skriv en metode i Bibliotek klassen, som tager et Bog objekt som parameter, og returnerer true, hvis listen indeholder et Bog objekt med samme ISBN.
}
