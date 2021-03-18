public class Controller {
    public static void runController() {
        double userIn = Dialog.doDiag();
        double moms = VAT.doVAT(userIn);
        View.doView(moms, Main.MSG);
    }
}
