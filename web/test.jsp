<%--
  Created by IntelliJ IDEA.
  User: OB
  Date: 2017/10/3
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>
   <style>
       Lab2 change demo......
       body{
           /*background-image: url("img/testbackground.jpg");*/
           background-size: 100%;
           background-repeat: no-repeat;
           background-attachment: scroll;
           position: relative;

       }

       #bigmain{
           background-image:url("img/magif.jpeg");
           border:1px dashed #000;
           width:1100px;
           height: 1700px;
           background-color:#FFFFFF;

       }
       #main{
           width: 1100px;
           height: 200px;
           /*position: relative;*/
           background-image: url("img/mainback.gif");


       }
       #sonone{
           width: 100px;
           height: 100px;
           top:50px;
           margin-left: 25px;
           position: absolute;

       }
       #sontwo{
           position: absolute;
           width: 80px;
           height:80px;
           top:70px;
           left: 840px;
           /*background-color: black;*/

       }
       #sontwoson{
           position: absolute;
           width: 80px;
           height:20px;
           top:48px;
           left: 88px;
       }
       #sonthreeson{
           position: absolute;
           width: 80px;
           height:20px;
           top:48px;
           left: 90px;
       }
       #mainson{
           position: absolute;
           width: 80px;
           height:20px;
           top:68px;
           left: 835px;
       }
       #sonthree{
           position: absolute;
           width: 80px;
           height: 80px;
           top: 70px;
           left: 907px;
           /*background-color: black;*/
       }
       #sonfour{
           position: absolute;
           width:80px;
           height: 80px;
           top: 70px;
           left: 975px;
       }
       #main1{
           width: 800px;
           height: 130px;
           float:left;
           background-color: lightskyblue;
           margin: 20px;
       }
       #main2{
           margin: 20px;
           width: 800px;
           height: 130px;
           float:right;
           background-color:beige;
       }
       #main3{
           margin: 20px;
           width: 800px;
           height: 130px;
           float:left;
           background-color:beige;
       }
       .button {
           position: relative;
           display: inline-block;
           border-radius: 4px;
           background-color:#6a7989;
           border: none;
           color: #FFFFFF;
           text-align: center;
           font-size: 28px;
           padding: 20px;
           width: 200px;
           transition: all 0.5s;
           cursor: pointer;
           margin: 5px;
       }

       .button span {
           cursor: pointer;
           display: inline-block;
           position: relative;
           transition: 0.5s;
       }

       .button span:after {
           content: '»';
           position: absolute;
           opacity: 0;
           top: 0;
           right: -20px;
           transition: 0.5s;
       }

       .button:hover span {
           padding-right: 25px;
       }

       .button:hover span:after {
           opacity: 1;
           right: 0;
       }
       #main4{
           margin: 20px;
           width: 800px;
           height: 130px;
           float:left;
           background-color:beige;
       }
       #main5{
           margin: 20px;
           width: 800px;
           height: 130px;
           float:right;
           background-color:beige;
       }
       #main6{
           margin: 20px;
           width: 800px;
           height: 130px;
           float:right;
           background-color:beige;
       }
       #null1{
           margin: 20px;
           width: 1200px;
           height: 200px;
           float:right;
           diaplay:none;
           opacity: 0;
       }
       #null{
           margin-left: 20px;
           margin-top: 20px;
           width: 1120px;
           height: 120px;
           float:right;
           background-color:black;
           opacity: 1.0;
       }
       #add{
           margin: 20px;
           width: 1100px;
           height: 100px;
           float:left;
           opacity: 0.6;
           /*diaplay:none;*/
           /*opacity: 0;*/
       }
       figure.effect-lily img {
           max-width: none;
           width: -webkit-calc(100% + 50px);
           width: calc(100% + 50px);
           opacity: 0.7;
           -webkit-transition: opacity 0.35s, -webkit-transform 0.35s;
           transition: opacity 0.35s, transform 0.35s;
           -webkit-transform: translate3d(-40px,0, 0);
           transform: translate3d(-40px,0,0);
       }

       figure.effect-lily figcaption {
           text-align: left;
       }

       figure.effect-lily figcaption > div {
           position: absolute;
           bottom: 0;
           left: 0;
           padding: 2em;
           width: 100%;
           height: 50%;
       }

       figure.effect-lily h2,
       figure.effect-lily p {
           -webkit-transform: translate3d(0,40px,0);
           transform: translate3d(0,40px,0);
       }

       figure.effect-lily h2 {
           -webkit-transition: -webkit-transform 0.35s;
           transition: transform 0.35s;
       }

       figure.effect-lily p {
           color: rgba(255,255,255,0.8);
           opacity: 0;
           -webkit-transition: opacity 0.2s, -webkit-transform 0.35s;
           transition: opacity 0.2s, transform 0.35s;
       }

       figure.effect-lily:hover img,
       figure.effect-lily:hover p {
           opacity: 1;
       }

       figure.effect-lily:hover img,
       figure.effect-lily:hover h2,
       figure.effect-lily:hover p {
           -webkit-transform: translate3d(0,0,0);
           transform: translate3d(0,0,0);
       }

       figure.effect-lily:hover p {
           -webkit-transition-delay: 0.05s;
           transition-delay: 0.05s;
           -webkit-transition-duration: 0.35s;
           transition-duration: 0.35s;
       }

   </style>
</head>
<body>
<div id="bigmain">
        <div id="main" overflow:hidden>
            <div id=sonone>
               <a href="#add">
                   <img src="img/mianpage.png" width="80" height="80">
               </a>
                <div id="mainson">
                    <h4><font color="red">刷新</font> </h4>
                </div>
            </div>
            <div id="sontwo">
                <a href="test.jsp">
                    <img src="img/mainpage2.png" width="68" height="68">
                </a>
                <div id="sontwoson">
                    <h4><font color="red">预览</font> </h4>
                </div>
            </div>
            <div id="sonthree">
                <a href="showallbook.action">
                    <img src="img/operation.png" width="69" height="68">
                </a>
                <div id="sonthreeson">
                    <h4><font color="red">疑问</font> </h4>
                </div>
            </div>
            <div id="sonfour">
                <a href="bb.jsp">
                    <img src="img/notice.png" width="69" height="68">
                </a>
            </div>
        </div>



        <div id="main4" align="center" >
            <a href="bb.jsp"><button class="button" style="vertical-align:middle"><span>本站使用教程</span></button></a>
        </div>
        <div id="main5" align="center">
            <a href="showallbook.action"><button class="button" style="vertical-align:middle"><span>预览图书馆书单</span></button></a>
        </div>
        <div id="main1" align="center">
            <a href="AuFindBook.jsp"><button class="button" style="vertical-align:middle"><span>点击查询作者书籍</span></button></a><br/>
        </div>
        <div id="main2" align="center">
            <a href="update.jsp"><button class="button" style="vertical-align:middle"><span>更新书籍作者信息</span></button></a><br/>
        </div>
        <div id="main3" align="center">
            <a href="AuthorIDprefind.jsp"><button class="button" style="vertical-align:middle"><span>增加作者书籍信息</span></button></a><br/>
        </div>
        <div id="main6" align="center">
            <a href="watchvideo.jsp"><button class="button" style="vertical-align:middle"><span>累了看会儿片儿</span></button></a><br/>
        </div>
        <div id="null1">
        </div>

        <div align="center" id="add">
            <p align="center">
                <h5><font color="#f0ffff">有任何疑问请联系网站管理员</font></h5>
                <h5><font color="#f0ffff">姓名：梁智博</font> </h5>
                <h5><font color="#f0ffff"> 联系方式：15694515793</font></h5>

            </p>
        </div>
        <div id="null" >

        </div>
</div>


</body>
</html>
	