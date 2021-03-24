public abstract class Car {
    private String regNr;
    private String brand;
    private String model;
    private int year;
    private int doors;

    public Car(String regNr, String brand, String model, int year, int doors) {
        this.regNr = regNr;
        this.brand = brand;
        this.model = model;
        this.year = year;
        this.doors = doors;
    }

    public String getRegNr() {
        return regNr;
    }

    public void setRegNr(String regNr) {
        this.regNr = regNr;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getDoors() {
        return doors;
    }

    public void setDoors(int doors) {
        this.doors = doors;
    }

    public abstract double calculateEcoTax();


    @Override
    public String toString() {
        return "Car{" +
                "regNr='" + regNr + '\'' +
                ", brand='" + brand + '\'' +
                ", model='" + model + '\'' +
                ", year=" + year +
                ", doors=" + doors +
                '}';
    }
}
