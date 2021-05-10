public class Main {

    public static void main(String[] args) {
        System.out.println(howLongTillCutForLoop(5, 122));
        System.out.println(howLongTillCutRealMath(5, 122));
    }

    public static String howLongTillCutForLoop(double lengthGrass, double lengthGrassMax) {
        int dayCounter = 0;
        double growth = 0.8;
        for (int i = 0; lengthGrass < lengthGrassMax; i++) {
            lengthGrass += growth;
            dayCounter++;
        }
        return "days until cut: " + dayCounter;
    }

    public static String howLongTillCutRealMath(double lengthGrass, double lengthGrassMax) {
        double dayCounter;
        int dayCounterRounded;
        double growth = 0.8;
        double math = (lengthGrassMax - lengthGrass) / growth;

        dayCounter = math;
        dayCounterRounded = (int) math;
        return "Days: " + dayCounter + "    Days rounded: " + dayCounterRounded;
    }
}
