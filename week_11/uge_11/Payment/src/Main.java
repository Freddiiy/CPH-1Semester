public class Main {

    public static void main(String[] args) {
	Account account0 = new Account("4593781145107322", "Janet Ottawa", "Frederiksberg", "Nordsjælland", "Denmark", "18/05/2021");
	Account account1 = new Account("1234123412341234", "Jens Lyn", "Frederiksberg", "Nordsjælland", "Denmark", "18/05/2021");
	Account account2 = new Account("4904344348439820", "Orne Borne", "Frederiksberg", "Nordsjælland", "Denmark", "18/05/2021");
	Account account3 = new Account("1235412312556132", "Hans Christian", "Frederiksberg", "Nordsjælland", "Denmark", "18/05/2021");

	System.out.println(account0.luhnCheck(account0.cardNumber));

		System.out.println(account0.toString());
	}
}
