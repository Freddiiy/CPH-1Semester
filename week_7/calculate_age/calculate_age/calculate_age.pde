import java.time.Period;
import java.time.LocalDate;
// lav 3 tal om til en tidsperiode

void setup() {
  Period me = getAge(1997, 12, 27);
  Period you = getAge(2001, 11, 5);
  //Period ageDiff = getDifference(me, you);
  println("I am " + me.getYears() +" years and "+me.getMonths()+" months");
  println("You are " + you.getYears() +" years and "+you.getMonths()+" months");
  println("Age difference: " + getDifference(me, you));
}

Period getAge(int y, int m, int d) {
  // lav talene om til en dato
  Period age = Period.between(LocalDate.of(y, m, d), LocalDate.now());
  //find ud af hvor lang tid der er mellem datoen og nu
  return age;
}


String getDifference(Period age0, Period age1) {
   int yearDiff = Math.abs(age0.getYears() - age1.getYears());
   int monthDiff = Math.abs(age0.getMonths() - age1.getMonths());
   int dayDiff = Math.abs(age0.getDays() - age1.getDays());
   String diff = yearDiff + " years " + monthDiff + " months " + dayDiff + " days";
   return diff;
}
