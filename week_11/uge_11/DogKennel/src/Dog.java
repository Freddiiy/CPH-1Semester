import java.util.ArrayList;

public class Dog {
    private String name;
    private boolean isHungry;
    private String owner;
    public String offSpringName;
    ArrayList<String> offSpring = new ArrayList<String>();

    public Dog(String name, boolean isHungry) {
        this.name = name;
        this.isHungry = isHungry;;
    }

    public String feedDog() {
        if (isHungry = true) {
            isHungry = false;
        }
        return "Dog is fed :)";
    }

    public void setOwner (String owner) {
        this.owner = owner;
    }

    public String getOwner() {
        return owner;
    }

    public void setOffSpring (String offSpringName) {
        offSpring.add(offSpringName);
    }

    public String getOffSpring() {
        for (int i = 0; i < offSpring.size(); i++) {
            return offSpring.get(i);
        }
        return null;
    }
}