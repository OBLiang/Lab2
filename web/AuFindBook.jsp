<%--
  Created by IntelliJ IDEA.
  User: OB
  Date: 2017/9/30
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>根据作者姓名查找书籍信息</title>

    <style>
        body{
            position: relative;
        }
        #mytxt {
            margin-left:auto;
            margin-right:auto;
            max-width: 500px;
            background: #F7F7F7;
            padding: 25px 15px 25px 10px;
            font: 12px Georgia, "Times New Roman", Times, serif;
            color: #888;
            text-shadow: 1px 1px 1px #FFF;
            border:1px solid #E4E4E4;
        }
        #afbmain{
           position: absolute;
            left:30%;
            width:500px;
            height: 300px;
            background-color: #E4E4E4;
        }
    </style>

</head>
<body>
返回首界面<br/>
<a href="test.jsp">return</a>
<div align="center">
    <h2>本界面根据作者姓名提供书籍及个人信息</h2>
</div>
<div id="afbmain" align="center">
    <form action="AfindB.action">
        <br/>
        <br/>
        <br/>
        <label>
            <span>Name Wanted:</span>
            <input type="text" name="Authorname" id="mytxt">
        </label>
        <br/>
        <br/>
        <br/>

        <label>
            <input type="submit" value="Send">
        </label>

    </form>
</div>

</body>
</html>
