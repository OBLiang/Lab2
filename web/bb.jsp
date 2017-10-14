<%--
  Created by IntelliJ IDEA.
  User: OB
  Date: 2017/10/5
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用说明</title>
</head>
<body>
<body>
<style>

</style>
</body>
    <div id="bbmain">
        <p><h1>&nbsp&nbsp&nbsp使用说明</h1></p>
    </div>
<hr/>
    <h3>&nbsp&nbsp&nbsp目录：</h3>
    <h4>
        &nbsp&nbsp&nbsp1<a href="#detail">站内元素介绍</a><br>
        &nbsp&nbsp&nbsp2<a href="#bb2">实验要求</a><br/>
        &nbsp&nbsp&nbsp3<a href="#bb3">一点感想</a><br/>
    </h4>
<hr/>
    <p id="detail">
    <h3>站内元素介绍</h3>
        网站从主页面开始有<br/>
<h5>Point1</h5>“使用教程”:可到达当前界面，获取使用信息。
<h5>Point2</h5>“预览图书馆书单”：以表格的形式展示图书表<br/>
&nbsp&nbsp&nbsp单，包括ISBN、标题、作者ID、出版日期、出版商、价格。在表单上点击相应标题可转到show<br/>
&nbsp&nbsp&nbsp界面，详细展示图书以及作者的信息。<br/>
<h5>Point3</h5>“查询作者信息”：按提示输入作者姓名，展示所有姓名为输入的作者的所有书籍<br/>
&nbsp&nbsp&nbsp如果该作者不存在则跳转到中断界面。提示教校验数据/更换操作/更高级的操作。<br/>
<h5>Point4</h5>"更新信息"：按照作者ID更新信息，如果作者存在则可以直接更新除作者ID外的所有信息,<br/>
&nbsp&nbsp&nbsp否则提示重新校验信息或者直接新插入书籍与作者。<br/>
<h5>Point5</h5>"增加信息"：按照作者ID进行选择，如果作者已经存在，则只需要增加作者书库中的书即可,<br/>
&nbsp&nbsp&nbsp否则将会同时新增作者与书籍。
<h5>Point6</h5>"看片儿"：这个功能跑题了，只是为了测试一些题外的功能，如视频播放、插入广告等。
<h4>另外，在首页顶端的一些图片也设置了链接，用来快速跳转到所需界面。</h4>
    </p>
<hr/>
   <p  id="bb2">
   <h3>实验要求</h3>
开发要求<br>
–使用MySQL建立一个“图书数据库BookDB”，包含两张表：<br/>
– Book {ISBN (PK), Title, AuthorID (FK), Publisher, PublishDate, Price}<br/>
– Author {AuthorID (PK), Name, Age, Country}<br/>
– 手工输入足够多的若干测试数据；<br/>
– 功能需求：<br/>
– 输入作者名字，查询该作者所著的全部图书的题目；<br/>
– 当用户点击某本图书的题目时，展示图书详细信息和作者详细信息；<br/>
– 当用户点击“删除”按钮时，将对应行的图书从数据表中删除；<br/>
– (选做) 用户可新增一本图书，若该书作者不在库中，还需增加新作者；<br/>
– (选做) 用户可更新一本图书的作者、出版社、出版日期、价格。<br/>
– 性能需求：<br/>
– 页面的美观性<br/>
– 功能执行的效率<br/>
<h4>可见，要求的功能基本上都完成了。</h4>
  </p>
<hr/>
<p id="bb3"></p>
<h3>一点感想</h3>
&nbsp&nbsp&nbsp/10/06知识点很杂，但是比较有成就感，这也是大学三年第一次学到可以吃饭的技术，说的是实话，没有一点实验
报告的意思,真的是很有收获。至于后端就是java，前后端交互直接使用值栈的表单传值，前端一水的html和css，云平台部署
就是一顿瞎操作。也就是说，整个实验跟js一点关系都没有，这就很难受。当时掌握一种简单好用的方法就没再多想，其实个
人感觉js才是真正的生产力。之后的项目还会涉及这方面的知识，争取下一次学一学。很多大佬讲：前端这种东西，自己写
干嘛，直接抄就好咯，然而本人不敢苟同，抄来的东西终归是抄来的。我在没自己写前端之前，一直对前端码农有歧视，认为他
们做的无非就是写写画画的幼儿园任务，但事实好像不是这样，布局调试，动画技术等等这些并不比会简单到哪里去，像我这种
智力有限的渣渣只能是学一点算一点，再记录一下所闻所想而已。呵呵。<br/>
&nbsp&nbsp&nbsp<font color="#ffe4c4">10/08最后一次测试，还想着能加点js，也想到一些bug但是改起来估计又要大动，于是果断放弃
比如增加更新时有某一项忘填了可能信息就会以空的形式保存进去（肯定会有其他我没有想到但是确实存在的bug,,,,GG这次算是咖喱给给了）。</font><br/>
&nbsp&nbsp&nbsp<font color="#f0f8ff">10/09最后看一眼代码，修复了空ISBN也可以插入的bug，我发誓出了天大的bug也不改了。</font>
</p>
<hr/>
<br/>
<br/>
<br/>
</body>
</html>
