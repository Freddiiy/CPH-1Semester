/*
For all exercises in Task 4, you are allowed to complete them with arrays of a fixed size. But do consider how the functions you write in 4.b, 4.c, 4.d,  4.e would work, if the array received as a parameter would not have a fixed length. 
4.a create arrays of the following type and assign it at least 3 different values: 
    - Integer array
    - String array
    - boolean array
4.b Write a function that takes in an array of strings as parameter and prints each string.
4.c Write a function that receives an integer array as a parameter and returns the sum of all elements in the array.
4.d Write a function that receives an integer array as a parameter and returns the average value.	
4.e Consider how you could write a function that takes in an integer array as a parameter and returns the array sorted from lowest to highest value.
*/

class Main {

    public static String[] stringArray = {"Jens", "Peter", "Lars", "Mette"};
    public static int[] intArray = {2, 4, 6, 8, 10};
    public static boolean[] boolArray = {true, false, true, true};
    public static void main(String[] args) {

        //boolean[] boolArray = {true, true, false, true};
        
        // 4.b
        stringArray();
        // 4.c
        System.out.println(sumOfArray());
        // 4.d
        System.out.println(averageOfArray());

    }
    
    // 4.b
    public static void stringArray() {
        for (String i: stringArray) {
            System.out.println(i);
        }
    }

    //4.c
    public static int sumOfArray() {
        int sum = 0;
        for (int i : intArray) {
            sum += i;
        }
        return sum;
    }

    //4.d
    public static double averageOfArray() {
        int sum = 0;
        for (int i : intArray) {
            sum += i;
        }
        return sum / intArray.length;
    }
    //4.e
}