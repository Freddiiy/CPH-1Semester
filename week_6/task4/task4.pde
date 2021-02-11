/*Task 4:
 4.a print out numbers from 0 to 20 using a for loop.
 4.b alter the for loop from 4.a to only print even numbers (hint: google 'java modulus even number')
 4.c print out the same result as in task 4.b using a while loop instead of a for loop.
 */

// 4a
for (int i = 0; i <= 20; i++) {
  println("4a " + i);
}

//4b
for (int i = 0; i <= 20; i++) {
  if (i % 2 == 0) {
    println("4b " + i);
  }
}

//4c
int i = 0;
while (i <= 20) {
  if (i % 2 == 0) {
    println("4c " + i);
  }
  i++;
}
