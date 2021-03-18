
public class Account {
    String transaction_date;
    String product;
    double price;
    String payment_type;
    String cardNumber;
    String name;
    String city;
    String state;
    String country;
    String accountCreated;
    String lastLogin;

    public Account(String cardNumber, String name, String city, String state, String country, String accountCreated) {
        this.cardNumber = cardNumber;
        this.name = name;
        this.city = city;
        this.state = state;
        this.country = country;
        this.accountCreated = accountCreated;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public static boolean luhnCheck(String ccNumber)
    {
        int sum = 0;
        boolean alternate = false;
        for (int i = ccNumber.length() - 1; i >= 0; i--)
        {
            int n = Integer.parseInt(ccNumber.substring(i, i + 1));
            if (alternate)
            {
                n *= 2;
                if (n > 9)
                {
                    n = (n % 10) + 1;
                }
            }
            sum += n;
            alternate = !alternate;
        }
        return (sum % 10 == 0);
    }

    @Override
    public String toString() {
        return "Account:{" + "\n" +
                "transaction_date='" + transaction_date + '\'' + "\n" +
                "product='" + product + '\'' + "\n" +
                "price=" + price + "\n" +
                "payment_type='" + payment_type + '\'' + "\n" +
                "cardNumber='" + cardNumber + '\'' + "\n" +
                "name='" + name + '\'' + "\n" +
                "city='" + city + '\'' + "\n" +
                "state='" + state + '\'' + "\n" +
                "country='" + country + '\'' + "\n" +
                "accountCreated='" + accountCreated + '\'' + "\n" +
                '}';
    }
}
