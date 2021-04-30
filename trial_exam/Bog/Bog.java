import java.util.Objects;

public class Bog {
    private String ISBN;
    private String title;
    private int year;

    public Bog(String ISBN, String title, int year) {
        this.ISBN = ISBN;
        this.title = title;
        this.year = year;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public boolean equals(String ISBN) {
        if (this.ISBN.equals(ISBN)) {
            return true;
        } else {
            return false;
        }
    }
}
