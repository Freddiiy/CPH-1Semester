public class Main {

    public static void main(String[] args) {
        rect(4, '*');
    }

    public static void rect (int input, char charToShow) {
        int row = input;
        int col = input;
        int rect [][] = new int[row][col];
        for (int x = 0; x < rect.length; x++) {
            for (int y = 0; y < rect[x].length; y++) {
                System.out.print(charToShow + " ");
            }
            System.out.println();
        }
    }
}
