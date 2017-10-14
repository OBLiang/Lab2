<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: OB
  Date: 2017/9/30
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示刚刚根据作者姓名查询的书籍结果</title>
</head>
<body>
返回首界面<br/>
<a href="test.jsp">return</a>


<table border="1">
    <tr>
        <td>ISBN</td>
        <td>Title</td>
        <td>AuthorID</td>
        <td>Publisher</td>
        <td>PublishDate</td>
        <td>Price</td>
    </tr>

    <s:iterator value="#request.booklist" var="temp">
        <tr>

                <td><s:property value="#temp.ISBN"/></td>
                    <td><s:property value="#temp.Title"/></td>
                        <td><s:property value="#temp.AuthorID"/></td>
                            <td><s:property value="#temp.Publisher"/></td>
                                 <td><s:property value="#temp.PublishDate"/></td>
                                    <td><s:property value="#temp.Price"/></td>
        </tr>
    </s:iterator>
</table>


</body>
</html>
