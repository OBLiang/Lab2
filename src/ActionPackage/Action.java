package ActionPackage;

import localpackage.Author;
import localpackage.Book;
import localpackage.Cont;
import localpackage.Dao;

import java.util.ArrayList;
import java.util.List;

public class Action {
    private Dao dao=new Dao ();
    private Book book=new Book ();
    private Author author=new Author ();
    private String Authorname=new String ();
    private List<Book> booklist=new ArrayList<Book> ();
    private List<Book> booklistshowAll=new ArrayList<Book> ();
    private String ISBN=new String ();
    private Cont cont=new Cont ();
    private String AuthorID=new String ();

    public String Addbookandauthor(){
            int flag=dao.AddboodAndauthor(book,author);
            if(flag==0){
                return "WARNING";

            }else{            return "ADDBANDA";}
    }
    public String Addbookdire(){
        int flag=dao.Addbookdirect (book);
        if(flag==0){
            return "WARNINIG";
        }else {
            return "ADDBOOKDIRESUCCESS";
        }
    }

    public String AuthorIDfind(){
        author=dao.AuthorIDfind (AuthorID);
        if(author.getAuthorID ().equals (AuthorID)&&author.getName ().equals ("#")&&author.getCountry ().equals ("#")&&author.getAge().equals ("#")){
            return "NOAUTHORID";
        }else{
            return "HAVEAUTHORID";
        }
    }
    public String update(){
        int flag=dao.update (book,author);
        if(flag==1){
            return "SUCCESSUPDATE";
        }else{
            return "FAILEDUPDATE";
        }
    }

    public String AasBshow(){
        cont=dao.AasBshow (ISBN);
        return "AASBSHOW";
    }

    public String del(){
        dao.del (ISBN);
        return "SUCCESSDEL";
    }
    public String BookShowAll(){
        booklistshowAll=dao.BookShowAll ();
        return "BOOKSHOWALL";
    }


    public String AfindB(){
        booklist=dao.AfindB (Authorname);
        if(booklist.isEmpty ()){
            return "ERROR";
        }
        else{

            return "AFINDB";
        }
    }

    public String getAuthorID() {
        return AuthorID;
    }

    public void setAuthorID(String authorID) {
        AuthorID = authorID;
    }

    public Cont getCont() {
        return cont;
    }

    public void setCont(Cont cont) {
        this.cont = cont;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public List<Book> getBooklistshowAll() {
        return booklistshowAll;
    }

    public void setBooklistshowAll(List<Book> booklistshowAll) {
        this.booklistshowAll = booklistshowAll;
    }

    public List<Book> getBooklist() {
        return booklist;
    }

    public void setBooklist(List<Book> booklist) {
        this.booklist = booklist;
    }

    public String getAuthorname() {
        return Authorname;
    }

    public void setAuthorname(String authorname) {
        Authorname = authorname;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Dao getDao() {
        return dao;
    }

    public void setDao(Dao dao) {
        this.dao = dao;
    }
}
