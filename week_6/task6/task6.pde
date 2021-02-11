/*
6.a make 2 integer variables named a and b. Print "Success!" if either of them is equal to 10 or if the sum is. If not, print "Failure!".
 6.b make 3 integer variables named x, y and z. Print "Success!" if their sum is 30, but none of them may have the value of 10, 20 or 30. Otherwise print "Failure!".
 */

//6a
int a = 10;
int b = 10;

if (a == 10 || b == 10 || a + b == 10) {
  println("success");
} else {
  println("failure");
}


//6b
int x = 10;
int y = 10;
int z = 10;

//du får mig ikke til at lave en smart løsning når ctrl + c og ctrl + v findes
if (x != 10 &&
    y != 10 &&
    z != 10 &&
    x != 20 &&
    y != 20 &&
    z != 20 &&
    x != 30 &&
    y != 30 &&
    z != 30) {
  if (x + y + z == 30) {
    println("success");
  } else {
    println("failure");
  }
} else {
  println("big failure :(");
}
