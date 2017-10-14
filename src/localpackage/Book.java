package localpackage;

public class Book {
    private String ISBN;
    private String Title;
    private String AuthorID;
    private String Publisher;
    private String PublishDate;
    private String Price;

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public void setAuthorID(String authorID) {
        AuthorID = authorID;
    }

    public String getAuthorID() {
        return AuthorID;
    }

    public String getPublisher() {
        return Publisher;
    }

    public void setPublisher(String publisher) {
        Publisher = publisher;
    }

    public String getPublishDate() {
        return PublishDate;
    }

    public void setPublishDate(String publishDate) {
        PublishDate = publishDate;
    }

    public void setPrice(String price) {
        Price = price;
    }

    public String getPrice() {
        return Price;
    }

    public static void main(String[] args) {
        System.out.println("Lab2 change demo......");
        System.out.println("4354655");


    }
}
