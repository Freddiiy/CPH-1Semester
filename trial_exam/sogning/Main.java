import java.util.Arrays;

public class Main {

    public static void main(String[] args) {
        //String[] test = {"a", "b", "seje"};
        String[] test = {"a", "cock", "seje"};
        System.out.println(sogAlternative(test, "seje"));;
    }

    public static int sog(String[] str, String s ) {
        for (int i = 0; i < str.length; i++) {
            if (str[i].equals(s)) {
                System.out.println("ord der matcher er: " + str[i]);
                return Arrays.asList(str).indexOf(str[i]);
            }
        }
        return -1;
    }

    public static int sogAlternative(String[] str, String s ) {
        for (int i = 0; i < str.length; i++) {
            try {
                str[i].equals(s);
                System.out.println("ord der matcher er: " + str[i]);
                return Arrays.asList(str).indexOf(str[i]);
            } catch (Exception e) {
                System.out.println("bruh nothing");
            }
        }
        return -1;
    }
}