<%--
  Created by IntelliJ IDEA.
  User: OB
  Date: 2017/10/2
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
 返回首界面
    <a href="test.jsp">return</a>
    <title>增加书籍之前需要事先查询作者ID</title>
    <style>
        #txt {
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
        #premain{
            position: absolute;
            left:30%;
            width:500px;
            height: 300px;
            background-color: #E4E4E4;
        }
    </style>
</head>
<body>

<div align="center">
    <h2>为了程序的逻辑性和稳定性，在录入书籍信息之前需要确定作者是否存在！</h2>
</div>
<div id="premain" align="center">
    <form action="ahthoridfind.action">
        <br/>
        <br/>
        <br/>
        <label>
            <span>AuthorID Wanted</span>
            <input type="text" name="AuthorID" id="txt">
        </label>
        <br/>
        <br/>
        <br/>

        <label>
            <input type="submit" value="确定">
        </label>
        <br/>

    </form>
</div>


</body>
</html>
