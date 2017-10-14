<%--
  Created by IntelliJ IDEA.
  User: OB
  Date: 2017/9/30
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示当前点击的书籍信息及作者信息</title>
    <style>
        table, td, th
        {
            border:1px solid green;
        }

        tr
        {
            background-color: darkturquoise;
            color:white;
        }
    </style>
</head>
<body>
返回上级界面<br>
<a href="showallbook.action">back</a><br/>
返回首界面<br/>
<a href="test.jsp">return</a>
<table border="1" align="center">
    <div align="center"><h3>书籍详细信息</h3></div>
    <tr>
        <td>ISBN</td>
        <td>Title</td>
        <td>AuthorID</td>
        <td>Publisher</td>
        <td>PublishDate</td>
        <td>Price</td>
    </tr>
    <tr>
        <td>${cont.getBook().getISBN()}</td>
        <td>${cont.getBook().getTitle()}</td>
        <td>${cont.getBook().getAuthorID()}</td>
        <td>${cont.getBook().getPublisher()}</td>
        <td>${cont.getBook().getPublishDate()}</td>
        <td>${cont.getBook().getPrice()}</td>
    </tr>

</table>
<br/><br/><br/><br/>

<table border="1" align="center">
    <div align="center"> <h3>作者详细信息</h3></div>

    <tr>
        <td>AuthorID</td>
        <td>Name</td>
        <td>Age</td>
        <td>Country</td>
    </tr>
    <tr>
        <td>${cont.getAuthor().getAuthorID()}</td>
        <td>${cont.getAuthor().getName()}</td>
        <td>${cont.getAuthor().getAge()}</td>
        <td>${cont.getAuthor().getCountry()}</td>
    </tr>

</table>
</body>
</html>
