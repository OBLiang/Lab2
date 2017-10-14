<%--
  Created by IntelliJ IDEA.
  User: OB
  Date: 2017/10/2
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>可以直接添加相关的书籍信息</title>
    <style>
        #isbnmod{
            text-align:center;
            width:99%;height:30px;
            border-top-style: none;
            border-right-style: none;
            border-left-style: none;
            background-color: #f6f6f6;
            border-bottom-style: none;
        }
        #titlemod{
            text-align:center;
            width:99%;height:30px;
            border-top-style: none;
            border-right-style: none;
            border-left-style: none;
            background-color: #f6f6f6;
            border-bottom-style: none;
        }
        #idmod{
            text-align:center;
            width:99%;height:30px;
            border-top-style: none;
            border-right-style: none;
            border-left-style: none;
            background-color: #f6f6f6;
            border-bottom-style: none;
        }
        #publishermod{
            text-align:center;
            width:99%;height:30px;
            border-top-style: none;
            border-right-style: none;
            border-left-style: none;
            background-color: #f6f6f6;
            border-bottom-style: none;
        }
        #publishdatemod{
            text-align:center;
            width:99%;height:30px;
            border-top-style: none;
            border-right-style: none;
            border-left-style: none;
            background-color: #f6f6f6;
            border-bottom-style: none;
        }
        #pricemod{
            text-align:center;
            width:99%;height:30px;
            border-top-style: none;
            border-right-style: none;
            border-left-style: none;
            background-color: #f6f6f6;
            border-bottom-style: none;
        }
        #idmod2{
            text-align:center;
            width:99%;height:30px;
            border-top-style: none;
            border-right-style: none;
            border-left-style: none;
            background-color: #f6f6f6;
            border-bottom-style: none;
        }
        #namemod{
            text-align:center;
            width:99%;height:30px;
            border-top-style: none;
            border-right-style: none;
            border-left-style: none;
            background-color: #f6f6f6;
            border-bottom-style: none;
        }
        #agedate{
            text-align:center;
            width:99%;height:30px;
            border-top-style: none;
            border-right-style: none;
            border-left-style: none;
            background-color: #f6f6f6;
            border-bottom-style: none;
        }
        #countrymod{
            text-align:center;
            width:99%;height:30px;
            border-top-style: none;
            border-right-style: none;
            border-left-style: none;
            background-color: #f6f6f6;
            border-bottom-style: none;
        }
        #addbookmain{
            position: absolute;
            left:30%;
            width:500px;
            height: 580px;
            background-color: #E4E4E4;
        }
        #sub{
            position:relative;
            left: 45%;
        }
        #null{

            height: 200px;
            background-color: #FFFFFF;
        }

    </style>
</head>
<body>
返回首界面<br/>
<a href="test.jsp">return</a>
<div align="center">
    <h2>验证完毕，作者存在，直接录入书籍即可！</h2>
</div>
<div id="addbookmain">
    <form action="addbookdirect.action">
        书籍ISBN<input type="text" name="book.ISBN" id="isbnmod"><br/>
        书籍题目<input type="text" name="book.Title" id="titlemod"><br>
        作者ID<input type="text" readonly="readonly" id="idmod" name="book.AuthorID" value=${author.getAuthorID()}><br/>
        出版商<input type="text" name="book.Publisher" id="publishermod"><br/>
        出版日期<input type="text" name="book.PublishDate" id="publishdatemod"><br/>
        价格<input type="text" name="book.Price" id="pricemod"><br/>
        作者ID<input type="text" readonly="readonly" id="idmod2" name="author.AuthorID" value=${author.getAuthorID()}><br/>
        作者姓名<input type="text" readonly="readonly" id="namemod" name="author.Name" value=${author.getName()}><br/>
        作者年龄<input type="text" readonly="readonly" id="agedate" name="author.Age" value=${author.getAge()}><br/>
        作者国籍<input type="text" readonly="readonly" id="countrymod" name="author.Country" value=${author.getCountry()}><br/>
        <br>

        <input type="submit" value="确定" id="sub">

        <br>
    </form>
    <div id="null">

    </div>
</div>


</body>
</html>
