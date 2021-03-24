public class ElectricCar extends Car{
    private double batteryCapacityKWh;
    private double maxKm;
    private double whPrKm;
    private double kmPrL;

    public ElectricCar(String regNr, String brand, String model, int year, int doors, double batteryCapacityKWh, double maxKm, double whPrKm) {
        super(regNr, brand, model, year, doors);
        this.batteryCapacityKWh = batteryCapacityKWh;
        this.maxKm = maxKm;
        this.whPrKm = whPrKm;
    }

    public double getBatteryCapacityKWh() {
        return batteryCapacityKWh;
    }

    public void setBatteryCapacityKWh(int batteryCapacityKWh) {
        this.batteryCapacityKWh = batteryCapacityKWh;
    }

    public double getMaxKm() {
        return maxKm;
    }

    public void setMaxKm(int maxKm) {
        this.maxKm = maxKm;
    }

    public double getWhPrKm() {
        return whPrKm;
    }

    public void setWhPrKm(int whPrKm) {
        this.whPrKm = whPrKm;
    }

    public void electricToKmPrL () {
        double conversion = 100 / (whPrKm / 91.25);
        this.kmPrL = conversion;
    }

    @Override
    public double calculateEcoTax() {
        electricToKmPrL();
        if (kmPrL >= 21 && kmPrL <= 50) {
            return 330;
        } else if (kmPrL >= 15 && kmPrL <= 20) {
            return 1050;
        } else if (kmPrL >= 10 && kmPrL <= 14) {
            return 2340;
        } else if (kmPrL >= 5 && kmPrL <= 9) {
            return 5500;
        } else if (kmPrL > 5) {
            return 10470;
        } else {
            return 0;
        }
    }

    @Override
    public String toString() {
        return "ElectricCar{" +
                "regNr='" + getRegNr() + '\'' +
                ", brand='" + getBrand() + '\'' +
                ", model='" + getModel() + '\'' +
                ", year=" + getYear() +
                ", doors=" + getDoors() +
                ", batteryCapacityKWh=" + batteryCapacityKWh +
                ", maxKm=" + maxKm +
                ", whPrKm=" + whPrKm +
                '}';
    }
}
