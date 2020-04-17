package top.wsuo.bean;

/**
 * 书的实体类
 *
 * @Author shuo wang
 * @Date 2020/4/12 0012 10:17
 * @Version 1.0
 */
public class Book {
    private String isbn;
    private String title;
    private double price;

    public Book() {
    }

    public Book(String isbn, String title, double price) {
        this.isbn = isbn;
        this.title = title;
        this.price = price;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
}
