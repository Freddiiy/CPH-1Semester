//2.a Look at the file TaskTwoA and fill out the missing line, using the happy boolean. 
//2.b Write a function that receives to integers as parameters and returns the sum of them.
//2.c Write a function that receives a string and returns it as uppercase. (Hint: ".toUpperCase()". Further hint: https://www.w3schools.com/jsref/jsref_toUpperCase.asp )
//2.d Write a function that receives a string and returns true if the first letter of the string is uppercase. (Hints: ".charAt(0)" and "Character.isUpperCase('a');" )
class Main{
    public static boolean happy = true;

    public static void main(String [] args) {
    if (iAmHappy())
    {
        System.out.println("I clap my hands");
    }
    else
    {
        System.out.println("I don't clap my hands"); 
    }
    System.out.println(calculator(4,4));

    System.out.println(stringUppercase("yep cock"));

    System.out.println(checkIfUppercase("Lol"));
    }

    // 2.a
    public static boolean iAmHappy()
    {
    // fill out what is missing here: 
    return happy;
    }
    // 2.b
    public static int calculator(int a, int b) {
        return a + b;
    }

    //2.c
    public static String stringUppercase(String str) {
        str = str.toUpperCase();
        return str;
    }

    //2.d
    public static boolean checkIfUppercase(String str) {
        char firstLetter = str.charAt(0);
        if (Character.isUpperCase(firstLetter)) {
            return true;
        } else {
            return false;
        }
    }
}