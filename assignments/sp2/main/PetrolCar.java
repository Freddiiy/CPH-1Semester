public class PetrolCar extends Car {
    private double octaneNum;
    private double kmPrL;

    public PetrolCar(String regNr, String brand, String model, int year, int doors, double octaneNum, double kmPrL) {
        super(regNr, brand, model, year, doors);
        this.octaneNum = octaneNum;
        this.kmPrL = kmPrL;
    }

    public double getOctaneNum() {
        return octaneNum;
    }

    public void setOctaneNum(int octaneNum) {
        this.octaneNum = octaneNum;
    }

    public double getKmPrL() {
        return kmPrL;
    }

    public void setKmPrL(int kmPrL) {
        this.kmPrL = kmPrL;
    }

    @Override
    public double calculateEcoTax() {
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
        return "PetrolCar{" +
                "regNr='" + getRegNr() + '\'' +
                ", brand='" + getBrand() + '\'' +
                ", model='" + getModel() + '\'' +
                ", year=" + getYear() +
                ", doors=" + getDoors() +
                ", octaneNum=" + octaneNum +
                ", kmPrL=" + kmPrL +
                '}';
    }
}
