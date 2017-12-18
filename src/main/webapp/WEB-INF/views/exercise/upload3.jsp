<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<style type="text/css">
.all{
    width: 1300px;
    height: 501px;
    border-bottom: 1px solid #acc2e9;
    float:left;
}
.aa{ 
    margin: 50px -50px;
    float: left;
}

.aa li{ 
    list-style: none;
    margin:0;
    padding:0;
    border-top:1px solid white;
    border-bottom:1px solid white;
    cursor:pointer; 
}

#main{
    width: 150px;
    background: #DB6987;
    font-size: 16px;
    text-align: center;
    cursor: pointer;
    line-height: 40px;
    color: white;
}

#main:hover{
    background: #90A8E3;
}

.bb{
    width:1100px;
    height: 500px;
    margin: 0px 50px;
    float:left; 
    border-left: 1px solid #acc2e9;
    text-align: center;
}
.footer{
    border-top: 1px solid #acc2e9;
    float: left;
    height: 50px;
    background: #fff;
}
.footer .row{
    margin:  0px 500px;
    height: 45px;
    line-height: 30px;
    font-size: 12px;
    color: #666;
    clear: both;
    text-align: center;
}

span{
  font-size: 30px;
  margin:  30px 50px;
}

textarea{
  width: 800px;
  height: 350px;
}

input{
  margin: 800px, 500px;
}
</style>
</head>
<body>
    <div class = "all">
    <div class="aa">
    <ul  id="leftmenu0">
    <li id = "main" class="hover" onclick="setTab(0,0)"><a href = "home.jsp">基础知识</a></li>
    <li id = "main" onclick="setTab(0,1)">基本技能</li>
    <li id = "main" onclick="setTab(0,2)">重点内容</li>
    <li id = "main" onclick="setTab(0,3)">难点内容</li>
    <li id = "main" onclick="setTab(0,3)"><a href = "http://localhost:8080/MvcProject/home.show">HOME</a></li>
    </ul>
    </div>

  <form method = "post" action = "/MvcProject/upload3.do">
    <div id="mcont0" class="bb">
      <span>重点内容</span>
      <h3>请输入上传内容：</h3>
      <textarea name = "content"></textarea>
      <button>确定</button>
    </div>
  </form>

    <footer class="footer">
        <div class="devider"></div>
        <div class="row">
            Copyright (C) 第0军团 20017 All Rights Reserved | <a href="http://www.it.bjfu.edu.cn">北京林业大学信息学院</a>
        </div>
    </footer>
</div>
</body>
</html>