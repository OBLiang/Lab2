<%--
  Created by IntelliJ IDEA.
  User: OB
  Date: 2017/10/5
  Time: 23:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>看片页面</title>
    返回首界面
    <a href="test.jsp">return</a>
    <style>
        body{
            postion:relative;
        }
        #wantchtvmain{
            position:absolute;
            top: 300px;
            left:350px;
            width: 500px;
            height:240px;
            background-color:darkturquoise;
        }
        #text{
            position:absolute;
            top:200px;
            left:350px;
            width:500px;
            height:150px;

        }
        #null1{
            position: absolute;
            top:560px;
            left:350px;
            width:500px;
            height:400px;
            background-color: #ffffff;
        }
    </style>
</head>
<body>
<div id="text" align="center">
    <p>该页面与本实验无关，只是为了测试一些其他技术</p>
</div>
<div id="wantchtvmain" align="center">
        <video width="320" height="240" controls autoplay>
            <source src="img/video.mp4" type="video/mp4">
        </video>
</div>
<div id="null1">

</div>
</body>
</html>
