package localpackage;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class Dao {
    private static final String driver="com.mysql.jdbc.Driver";
    private static final String url="jdbc:mysql://mpijrrimciyj.mysql.sae.sina.com.cn:10298/mydatabase";
    private static final String user="root";
    private static final String pswd="ob414133";
//    private static final String url="jdbc:mysql://localhost:3306/mydatabase";

    public void contest(){
        Connection con=null;
        try {
            Class.forName (driver);
            con= DriverManager.getConnection (url,user,pswd);
            if(!con.isClosed ()){
                System.out.println("通信成功！");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace ();
        } catch (SQLException e) {
            e.printStackTrace ();
        } finally {
        }
    }


   public List<Book> AfindB(String Authorname){
        List<Book> booklist=new ArrayList<Book> ();
        Connection con=null;
       PreparedStatement pstA=null;
       PreparedStatement pstB=null;
       Book book=null;
       try {
           Class.forName (driver);
           con=DriverManager.getConnection (url,user,pswd);
           pstA=con.prepareStatement ("SELECT * FROM author WHERE Name=?");
           pstA.setString(1,Authorname);
           ResultSet rsA=pstA.executeQuery ();
           while(rsA.next ()){
               pstB=con.prepareStatement ("SELECT *FROM bookdemo WHERE AuthorID=?");
               pstB.setString (1,rsA.getString ("AuthorID"));
               ResultSet rsB=pstB.executeQuery ();
               while(rsB.next ()){
                   book=new Book ();
                   book.setISBN (rsB.getString ("ISBN"));
                   book.setTitle (rsB.getString ("Title"));
                   book.setAuthorID (rsB.getString ("AuthorID"));
                   book.setPublisher (rsB.getString ("Publisher"));
                   book.setPublishDate (rsB.getString ("PublishDate"));
                   book.setPrice (rsB.getString ("Price"));
                   booklist.add (book);
               }
           }

       } catch (ClassNotFoundException e) {
           e.printStackTrace ();
       } catch (SQLException e) {
           e.printStackTrace ();
       } finally {
           try {
               pstA.close ();
               con.close ();
           } catch (SQLException e) {
               e.printStackTrace ();
           }
       }
       return booklist;
   }

    public List<Book> BookShowAll(){
       List<Book>  booklistshowAll=new ArrayList<Book> ();
       Connection con=null;
       PreparedStatement pstB=null;
       Book book=new Book ();
        try {
            Class.forName (driver);
            con=DriverManager.getConnection (url,user,pswd);
            pstB=con.prepareStatement ("SELECT * FROM bookdemo");
            ResultSet rsB=pstB.executeQuery ();
            while(rsB.next ()){
                book=new Book ();
                book.setISBN (rsB.getString ("ISBN"));
                book.setTitle (rsB.getString ("Title"));
                book.setAuthorID (rsB.getString ("AuthorID"));
                book.setPublisher (rsB.getString ("Publisher"));
                book.setPublishDate (rsB.getString ("PublishDate"));
                book.setPrice (rsB.getString ("Price"));
                booklistshowAll.add (book);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace ();
        } catch (SQLException e) {
            e.printStackTrace ();
        } finally {
            try {
                con.close ();
                pstB.close ();
            } catch (SQLException e) {
                e.printStackTrace ();
            }
        }

        return  booklistshowAll;
    }
    public void del(String ISBN){
        Connection con=null;
        PreparedStatement pstB=null;
        try {
            Class.forName (driver);
            con=DriverManager.getConnection (url,user,pswd);
            pstB=con.prepareStatement ("DELETE FROM bookdemo WHERE ISBN=?");
            pstB.setString (1,ISBN);
            pstB.executeUpdate ();
        } catch (ClassNotFoundException e) {
            e.printStackTrace ();
        } catch (SQLException e) {
            e.printStackTrace ();
        } finally {
            try {
                pstB.close ();
                con.close ();
            } catch (SQLException e) {
                e.printStackTrace ();
            }

        }
    }
    public Cont AasBshow(String ISBN){
        Cont cont=new Cont ();
        Connection con=null;
        PreparedStatement pstB=null;
        Book book=new Book ();
        Author author=new Author ();
        try {
            Class.forName (driver);
            con=DriverManager.getConnection (url,user,pswd);
            pstB=con.prepareStatement ("SELECT * FROM bookdemo WHERE ISBN=?");
            pstB.setString (1,ISBN);
            ResultSet rsB=pstB.executeQuery ();
            while(rsB.next ()){
                PreparedStatement pstA=con.prepareStatement ("SELECT * FROM author WHERE AuthorID=?");
                pstA.setString (1,rsB.getString ("AuthorID"));
                ResultSet rsA=pstA.executeQuery ();
                book.setISBN (rsB.getString ("ISBN"));
                book.setTitle (rsB.getString ("Title"));
                book.setAuthorID (rsB.getString ("AuthorID"));
                book.setPublisher (rsB.getString ("Publisher"));
                book.setPublishDate (rsB.getString ("PublishDate"));
                book.setPrice (rsB.getString ("Price"));
                cont.setBook (book);
                while(rsA.next ()){
                    author.setAuthorID (rsA.getString ("AuthorID"));
                    author.setName (rsA.getString ("Name"));
                    author.setAge (rsA.getString ("Age"));
                    author.setCountry (rsA.getString ("Country"));
                    cont.setAuthor (author);
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace ();
        } catch (SQLException e) {
            e.printStackTrace ();
        } finally {
            try {
                con.close ();
                pstB.close ();
            } catch (SQLException e) {
                e.printStackTrace ();
            }
        }

        return cont;
    }
    public int update(Book book,Author author){
        Connection con=null;
        PreparedStatement pstBfind=null;
        PreparedStatement pstAfind=null;
        PreparedStatement pstA=null;
        PreparedStatement pstB=null;
        try {
            Class.forName (driver);
            con=DriverManager.getConnection (url,user,pswd);
            String AuthorID=book.getAuthorID ();
            pstBfind=con.prepareStatement ("SELECT * FROM bookdemo WHERE ISBN=?");
            pstBfind.setString (1,book.getISBN ());
            ResultSet rstBfind=pstBfind.executeQuery ();
            pstAfind=con.prepareStatement ("SELECT * FROM author WHERE AuthorID=?");
            pstAfind.setString (1,book.getAuthorID ());
            ResultSet rstAfind=pstAfind.executeQuery ();
            if((!rstAfind.first ())||(!rstBfind.first ())){
                return 0;
            }else{

            }
            pstB=con.prepareStatement ("UPDATE bookdemo SET Title=?,AuthorID=?,Publisher=?,PublishDate=?,Price=? WHERE ISBN=?");
            pstB.setString (1,book.getTitle ());
            pstB.setString (2,book.getAuthorID ());
            pstB.setString (3,book.getPublisher ());
            pstB.setString (4,book.getPublishDate ());
            pstB.setString (5,book.getPrice ());
            pstB.setString (6,book.getISBN ());
            pstB.executeUpdate ();
            pstA=con.prepareStatement ("Update author SET Name=?,Age=?,Country=? WHERE AuthorID=?");
            pstA.setString (1,author.getName ());
            pstA.setString (2,author.getAge ());
            pstA.setString (3,author.getCountry ());
            pstA.setString (4,author.getAuthorID ());
            pstA.executeUpdate ();


        } catch (ClassNotFoundException e) {
            e.printStackTrace ();
        } catch (SQLException e) {
            e.printStackTrace ();
        } finally {
            try {
//                pstB.close ();
//                pstA.close ();
                con.close ();
            } catch (SQLException e) {
                e.printStackTrace ();
            }
        }

        return 1;
    }
    public Author AuthorIDfind(String authorid){
        Connection con=null;
        PreparedStatement pstA=null;
        Author author=new Author ();
        try {
            Class.forName (driver);
            con=DriverManager.getConnection (url,user,pswd);
            pstA=con.prepareStatement ("SELECT * FROM author WHERE AuthorID=?");
            pstA.setString (1,authorid);
            ResultSet rsA=pstA.executeQuery ();
            if(!rsA.first ()){
                author.setAuthorID (authorid);
                author.setName ("#");
                author.setAge ("#");
                author.setCountry ("#");
            }else{
                author.setAuthorID (rsA.getString ("AuthorID"));
                author.setName (rsA.getString ("Name"));
                author.setAge (rsA.getString ("Age"));
                author.setCountry (rsA.getString ("Country"));
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace ();
        } catch (SQLException e) {
            e.printStackTrace ();
        } finally {
            try {
                pstA.close ();
                con.close ();
            } catch (SQLException e) {
                e.printStackTrace ();
            }
        }
        return author;
    }
    public int Addbookdirect(Book book){
        if(book.getISBN().toString().equals("")){
            return 0;
        }else{
        Connection con=null;
        PreparedStatement pstB=null;
        try {
            Class.forName (driver);
            con=DriverManager.getConnection (url,user,pswd);
            pstB=con.prepareStatement ("INSERT INTO bookdemo VALUES(?,?,?,?,?,?)");
            pstB.setString (1,book.getISBN ());
            pstB.setString (2,book.getTitle ());
            pstB.setString (3,book.getAuthorID ());
            pstB.setString (4,book.getPublisher ());
            pstB.setString (5,book.getPublishDate ());
            pstB.setString (6,book.getPrice ());
            pstB.executeUpdate ();
        } catch (ClassNotFoundException e) {
            e.printStackTrace ();
        } catch (SQLException e) {
            e.printStackTrace ();
        } finally {
            try {
                pstB.close ();
                con.close ();
            } catch (SQLException e) {
                e.printStackTrace ();
            }
        }
        return 1;
        }
    }
    public int AddboodAndauthor(Book book,Author author){
            if(book.getISBN().toString().equals("")){
                return 0;

            }else{
                Connection con=null;
            PreparedStatement pstA=null;
            PreparedStatement pstB=null;
            try {
                Class.forName (driver);
                con=DriverManager.getConnection (url,user,pswd);
                pstB=con.prepareStatement ("INSERT INTO bookdemo VALUES(?,?,?,?,?,?)");
                pstB.setString (1,book.getISBN ());
                pstB.setString (2,book.getTitle ());
                pstB.setString (3,book.getAuthorID ());
                pstB.setString (4,book.getPublisher ());
                pstB.setString (5,book.getPublishDate ());
                pstB.setString (6,book.getPrice ());
                pstB.executeUpdate ();
                pstA=con.prepareStatement ("INSERT INTO author VALUES (?,?,?,?)");
                pstA.setString (1,author.getAuthorID ());
                pstA.setString (2,author.getName ());
                pstA.setString (3,author.getAge ());
                pstA.setString (4,author.getCountry ());
                pstA.executeUpdate ();

            } catch (ClassNotFoundException e) {
                e.printStackTrace ();
            } catch (SQLException e) {
                e.printStackTrace ();
            } finally {
                try {
                    pstA.close ();
                    pstB.close ();
                    con.close ();
                } catch (SQLException e) {
                    e.printStackTrace ();
                }
            }
            return 1;
            }


    }
    public static void main(String[] args){

//        Dao dao=new Dao ();
//        Author author=new Author ();
//        author=dao.AuthorIDfind("11");
//        if(author==null){
//            System.out.println("NULL");
//
//        }else{
//            System.out.println(author.getAuthorID ()+" "+
//                    author.getName ()+" "+
//                    author.getAge ()+" "+
//                    author.getCountry ());
//        }
//        Dao dao=new Dao ();
//        Book book=new Book ();
//        Author author =new Author ();
//        author.setCountry ("1");
//        author.setAge ("1");
//        author.setName ("1");
//        author.setAuthorID ("8");
//        book.setISBN ("9785533311111");
//        book.setTitle("中国体育");
//        book.setAuthorID ("8");
//        book.setPublisher ("HXT");
//        book.setPublishDate ("1995-04-03");
//        book.setPrice ("99.0");
//        dao.AddboodAndauthor (book,author);
//        int i=dao.update (book,author);
//        System.out.println(i);
//        Cont cont=new Cont ();
//        Dao dao=new Dao ();
//       cont=dao.AasBshow ("9783333300179");
//       Book book=cont.getBook ();
//       Author author=cont.getAuthor ();
//        System.out.println(book.getISBN ()+" "+
//                        book.getTitle ()+" "+
//                        book.getAuthorID ()+" "+
//                        book.getPublisher ()+" "+
//                        book.getPublishDate ()+" "+
//                        book.getPrice ()
//                );
//        System.out.println(author.getAuthorID ()+" "+
//                author.getName ()+" "+
//                author.getAge ()+" "+
//                author.getCountry ()
//
//        );

//        Dao dao=new Dao ();
//        dao.contest ();
//        List<Book> list=new ArrayList<Book> ();
//        Book book=new Book ();
//        list=dao.AfindB ("lll");
//        if(list.isEmpty ()){
//            System.out.println("!!!!!!!!!!");
//        }else{
//            for(int i=0;i<list.size ();i++){
//                book=list.get (i);
//                System.out.println(book.getISBN ()+" "+
//                        book.getTitle ()+" "+
//                        book.getAuthorID ()+" "+
//                        book.getPublisher ()+" "+
//                        book.getPublishDate ()+" "+
//                        book.getPrice ()
//                );
//            }
//        }
//        Dao dao=new Dao ();
//        dao.contest ();
//        List<Book> list=new ArrayList<Book> ();
//        Book book=new Book ();
//        list=dao.BookShowAll ();
//        if(list.isEmpty ()){
//            System.out.println("!!!!!!!!!!");
//        }else{
//            for(int i=0;i<list.size ();i++){
//                book=list.get (i);
//                System.out.println(book.getISBN ()+" "+
//                        book.getTitle ()+" "+
//                        book.getAuthorID ()+" "+
//                        book.getPublisher ()+" "+
//                        book.getPublishDate ()+" "+
//                        book.getPrice ()
//                );
//            }
//        }
//        System.out.println("///////////////////////");
//
//        dao.del ("9787507654999");
//        list=dao.BookShowAll ();
//        if(list.isEmpty ()){
//            System.out.println("!!!!!!!!!!");
//        }else{
//            for(int i=0;i<list.size ();i++){
//                book=list.get (i);
//                System.out.println(book.getISBN ()+" "+
//                        book.getTitle ()+" "+
//                        book.getAuthorID ()+" "+
//                        book.getPublisher ()+" "+
//                        book.getPublishDate ()+" "+
//                        book.getPrice ()
//                );
//            }
//        }

    }

}
