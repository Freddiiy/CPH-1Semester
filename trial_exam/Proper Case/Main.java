import java.util.Arrays;

public class Main {

    public static void main(String[] args) {
        properCase("jeg elsker DiLlEr og PIK");
    }

    public static void properCase(String input) {
        String[] words = input.split(" ");
        for (int i = 0; i < words.length; i++) {
            System.out.println(words[i] + " " + words[i].length());


            if(words[i].length() > 3) {
                words[i].toLowerCase();
                System.out.println("test1 " + words[i]);
                char[] wordCharArray = words[i].toCharArray();
                Character.toUpperCase(wordCharArray[0]);
                words[i] = new String(wordCharArray);
                System.out.println("test2 " + words[i]);
            }
        }
    }
}
