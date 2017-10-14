<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: OB
  Date: 2017/9/30
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>展示所有书籍</title>
    <style>
        table, td, th
        {
            border:1px solid lightskyblue;
        }
    </style>

</head>
<body>

<a href="test.jsp">返回首界面</a><br/>


<table border="1" background="img/showgif.gif" width="800" align="center">
    <tr>
        <td>ISBN</td>
        <td>Title</td>
        <td>AuthorID</td>
        <td>Publisher</td>
        <td>PublishDate</td>
        <td>Price</td>
        <td>operation</td>
    </tr>
    <s:iterator value="booklistshowAll" var="temp">
        <tr>
            <td><s:property value="#temp.ISBN"/></td>
            <td><a href='ABshow.action?ISBN=<s:property value="ISBN"/>'><s:property value="#temp.Title"/></a></td>
            <td><s:property value="#temp.AuthorID"/></td>
            <td><s:property value="#temp.Publisher"/></td>
            <td><s:property value="#temp.PublishDate"/></td>
            <td><s:property value="#temp.Price"/></td>
            <td><a href='delbook.action?ISBN=<s:property value="ISBN"/>'>删除</a> </td>
        </tr>
    </s:iterator>

</table>



</body>
</html>
