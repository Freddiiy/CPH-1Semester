public class VAT {
    public static double doVAT(double number){
        double VAT = number / 100 * Main.PRCVAT;
        return VAT;
    }
}
