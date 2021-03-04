import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.Scanner;

public class Main {
    static Scanner scan;
    private static String[][] text = new String[12][1];

    public static void main(String[] args) throws FileNotFoundException {

        File file = new File("data.txt");
        scan = new Scanner(file);
        int i = 0;
        while (scan.hasNextLine()) {
            text[i] = scan.nextLine().split(" ");

            i++;
        }

        // todo: print alle ord der starter med det der sendes med som argument,

        //printWordsStartingWith("Ø");

        //todo: print alle ord der har præcis det antal bogstaver der sendes med som argument (inkluderer IKKE tal og tegnene '.' og ',')

        //printWordsOfLength(3);


        //test dine metoder ved at kalde dem her:

        //printWordsWithDoubleConsonant();
        //printLongestSentence();
        //printPartOfWord("Cock", 0, 6);
        printIfPalindrome("cooc");

    }

    private static void printWordsOfLength(int l) {
        boolean wordisvalid = true;

        for (int i = 0; i < text.length; i++) {
            for (String s : text[i]) {
                if (s.length() == l) {
                    if (s.contains(",") || s.contains(".")) {
                        wordisvalid = false;
                    }
                    if (wordisvalid) {
                        System.out.println(s);
                    }

                }
            }
        }

    }

    private static void printWordsStartingWith(String pattern) {

        for (int i = 0; i < text.length; i++) {
            for (String s : text[i]) {
                if (s.startsWith(pattern) || s.startsWith(pattern.toLowerCase())) {
                    System.out.println(s);
                }
            }

        }
    }

    // task 1
    // Jeg kunne ikke finde ud af en sej løsning. Er dum hjælp mig
    private static void printWordsWithDoubleConsonant() {
        String[] doubleConsonant = {"bb", "cc", "dd", "ff", "gg", "hh", "jj", "kk", "ll", "mm", "nn", "pp", "rr", "ss", "tt", "vv", "ww", "xx", "zz"};
        String word;
        for (int i = 0; i < text.length; i++) {                             //for loop every line in the text file
            for (int j = 0; j < text[i].length; j++) {                      // for loop every word in the line
                word = text[i][j];
                for (int k = 0; k < doubleConsonant.length; k++) {          // for loop every possible double consonant
                    if (word.contains(doubleConsonant[k])) {                // checks if word contains double consonant
                        System.out.println(word);
                    }
                }
            }
        }
    }

    //task 2
    private static void printLongestSentence() throws FileNotFoundException {
        String[] splitArray;
        String longestSentence = "";
        File file = new File("data.txt");
        scan = new Scanner(file);
        int i = 0;
        while (scan.hasNextLine()) {
            splitArray = scan.nextLine().split("\\.");
            System.out.println(splitArray[i].length() + ":   " + splitArray[i]);
            if (longestSentence.length() < splitArray[i].length()) {
                longestSentence = splitArray[i];
            }
        }
        System.out.println("\nlongest sentence: " + longestSentence);
    }

    private static void printPartOfWord(String word, int index, int length) {
        try {
            System.out.println("Part of word " + word);
            System.out.println(word.substring(index, length));
        } catch (StringIndexOutOfBoundsException ex) {
            System.out.println("bruh parameter 2 er for stort");
        }

    }

    private static void printIfPalindrome(String word) {
        String input = word;
        String reverse = "";

        for (int i = input.length() - 1; i >= 0; i--) {
            reverse = reverse + input.charAt(i);
        }

        if (input.equals(reverse)) {
            System.out.println("\nYour word is a palindrome!");
        } else {
            System.out.println("\nYour word is not a palindrome!");
        }
    }

}






    //skriv dine metoder herunder: