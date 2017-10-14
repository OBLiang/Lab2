<%--
  Created by IntelliJ IDEA.
  User: OB
  Date: 2017/10/2
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>本界面添加书籍以及作者的相关信息，承接上级选项</title>
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

        #addbamain{
            position: absolute;
            left:30%;
            width:500px;
            height: 800px;
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
返回首界面<br>
<a href="test.jsp">return</a>

<div align="center">
    <h2>Master Model</h2>
    <h2>验证完毕，作者不存在！可以录入信息！</h2>
</div>
<div id="addbamain">
    <form action="AddAuthorAndBook.action">
        书籍ISBN<input type="text" name="book.ISBN" id="isbnmod"><br/>
        书籍题目<input type="text" name="book.Title" id="titlemod"><br>
        作者ID<input type="text" readonly="readonly" id="idmod" name="book.AuthorID" value=${author.getAuthorID()}><br/>
        出版商<input type="text" name="book.Publisher" id="publishermod"><br/>
        出版日期<input type="text" name="book.PublishDate" id="publishdatemod"><br/>
        价格<input type="text" name="book.Price" id="pricemod"><br/>
        作者ID<input type="text" readonly="readonly" id="idmod2" name="author.AuthorID" value=${author.getAuthorID()}><br/>
        作者姓名<input type="text" name="author.Name" id="namemod"><br/>
        作者年龄<input type="text" name="author.Age" id="agedate"><br/>
        作者国籍<input type="text" name="author.Country" id="countrymod"><br/>
        <br/><br/>
        <input type="submit" value="确定" id="sub">
    </form>
    <div id="null"></div>
</div>



</body>
</html>
