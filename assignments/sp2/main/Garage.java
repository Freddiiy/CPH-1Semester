import java.util.ArrayList;

public class Garage {
    private String garageName;
    ArrayList<Car> carPool = new ArrayList<>();
    private double EcoTaxForGarage;

    public Garage(String garageName) {
        this.garageName = garageName;
    }

    public void addCar(Car car) {
        carPool.add(car);
    }

    public double calculateEcoTaxForGarage() {
        double tmpResult = 0;
        for (int i = 0; i < carPool.size(); i++) {
            double tmpEcoTax = carPool.get(i).calculateEcoTax();
            tmpResult = tmpResult + tmpEcoTax;
        }
        double result = tmpResult;
        return result;
    }

    @Override
    public String toString() {
        return "Garage{" +
                "garageName='" + garageName + '\'' + "\n" +
                "CarPool=" + carPool + '\'' + "\n" +
                "Eco tax for garage: " + calculateEcoTaxForGarage() + '\'' +
                '}';
    }
}
