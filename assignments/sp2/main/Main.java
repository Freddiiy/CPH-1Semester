public class Main {

    public static void main(String[] args) {
	Garage autoMund = new Garage("AutoMund");

	autoMund.addCar(new ElectricCar("AK 20 200", "BMW", "i3", 2020, 4,
            20000, 560, 20));
	autoMund.addCar(new DieselCar("KS 50 500", "Mercedes", "Benz A-Class", 2019, 4,
            true, 25));
	autoMund.addCar(new PetrolCar("AE 21 205", "Mazda", "3", 2019, 4,
            20.5, 16));
	autoMund.addCar(new PetrolCar("AE 95 201", "VW", "Polo", 2015, 4,
			20.5, 16));

        System.out.println(autoMund);
    }
}
