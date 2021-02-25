/*
For this task you should reuse the Student class from Task 3. 
    Methods of reusing the class could be: 
    - copy the Students.java file and add it to a new folder called task5
    - copy the content of the Students class from Task 3 and create the class once more in this folder
    - Open the task 3 folder and continue working in this.
    Either method is fine - it is up to you. 
    
5.a Create a new class Datamatik or reuse the one you created earlier. 
    Add an array of Students with 10 elements in it. 
    This should be a class variable (static).
    From the main method, add 10 student instances to the array. 

5.b Create a function in Datamatik that takes in the array from 5.a as a parameter as well as an integer. 
    The function should return the field "name" (the name of the student) and print it (the integer should be used as the index number of the student to be printed). 
    Call this method with different parameters (only the integer - not the array) from the main() of Datamatik.

5.c Create a similar function to that of 5.b, but instead of receiving the array and an integer, 
    it receives the array and a string. Loop through all elements in the array until you find the element 
    with the name received as a parameter. Then return the index of that student. Call this method 
    with different names from the main method of Datamatik
*/

public class Datamatik {
    static Student student[] = new Student[10];
    public static void main(String[] args)  {
        student[0] = new Student("Jens", 22, false, 1);
        student[1] = new Student("Carl", 21, false, 2);
        student[2] = new Student("Cock", 25, false, 1);
        student[3] = new Student("Sune", 21, false, 3);
        student[4] = new Student("Preben", 57, false, 2);
        student[5] = new Student("Yvonne", 43, true, 1);
        student[6] = new Student("Trans Carl", 21, true, 2);
        student[7] = new Student("Clara", 19, true, 1);
        student[8] = new Student("Birgitte", 94, true, 1);
        student[9] = new Student("Lone", 33, true, 1);

        System.out.println(returnStudent(7));

        System.out.println("Student: " + returnStudent2("Carl"));
        System.out.println("Student: " + returnStudent2("Trans Carl"));
        System.out.println("Student: " + returnStudent2("Birgitte"));
    }

    //5.b
    public static String returnStudent(int y) {
        return student[y].name;
    }

    // 5.c
    public static int returnStudent2(String str) {
        for (int i = 0; i < student.length; i++) {
            if (student[i].name == str) {
                return i-1;
            }
        }
        return (Integer)null;
    }
}
