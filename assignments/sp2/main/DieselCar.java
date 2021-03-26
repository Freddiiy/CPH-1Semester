public class DieselCar extends Car{
    private boolean hasParticleFilter;
    private double kmPrL;

    public DieselCar(String regNr, String brand, String model, int year, int doors, boolean hasParticleFilter, double kmPrL) {
        super(regNr, brand, model, year, doors);
        this.hasParticleFilter = hasParticleFilter;
        this.kmPrL = kmPrL;
    }

    public boolean isHasParticleFilter() {
        return hasParticleFilter;
    }

    public void setHasParticleFilter(boolean hasParticleFilter) {
        this.hasParticleFilter = hasParticleFilter;
    }

    public double getKmPrL() {
        return kmPrL;
    }

    public void setKmPrL(int kmPrL) {
        this.kmPrL = kmPrL;
    }

    @Override
    public double calculateEcoTax() {
        double charge;
        if (kmPrL >= 21 && kmPrL <= 50) {
            charge = 330 + 130;
        } else if (kmPrL >= 15 && kmPrL <= 20) {
            charge = 1050 + 1390;
        } else if (kmPrL >= 10 && kmPrL <= 14) {
            charge = 2340 + 1850;
        } else if (kmPrL >= 5 && kmPrL <= 9) {
            charge = 5500 + 2770;
        } else if (kmPrL > 5) {
            charge = 10470 + 15260;
        } else {
            charge = 0;
        }

        if (!hasParticleFilter) {
            charge += 1000;
        }
        return charge;
    }

    @Override
    public String toString() {
        return "DieselCar{" +
                "regNr='" + getRegNr() + '\'' +
                ", brand='" + getBrand() + '\'' +
                ", model='" + getModel() + '\'' +
                ", year=" + getYear() +
                ", doors=" + getDoors() +
                ", hasParticleFilter=" + hasParticleFilter +
                ", kmPrL=" + kmPrL +
                '}';
    }
}
