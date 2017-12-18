<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/css/bootstrap.css" />
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/css/bootstrap-theme.css" />

        <script type="text/javascript"
                src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
        <script type="text/javascript"
                src="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
        <script type="text/javascript">
        </script>


    <style type="text/css">
.all{
    width: 1500px;
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
    width:1200px;
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
.bb ul{
    float: center;
}
</style>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".navbar-collapse">
                <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/login.jsp">北京林业大学数据挖掘课程</a>
        </div>
        <div class="collapse navbar-collapse" >
            <ul class="nav navbar-nav">
                <sec:authorize ifAllGranted="ROLE_ADMIN">
                    <li><a href="/user/list">学生管理</a></li>
                </sec:authorize>
                <li><a href="/ppts/list">授课资源</a></li>
                <li><a href="/resources">学习资源</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        学习资源<b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/homework/list">课程作业</a></li>
                        <li><a href="/ppts/list">课程讲义</a></li>
                    </ul>
                </li>
                <li><a href="/keypoint/list">重难点</a></li>
                <li><a href="/webchat">交流空间</a></li>
            </ul>

            <ul class="nav navbar-nav pull-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <sec:authentication property="name"/>你好~ <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">信息管理</a></li>
                        <li><a href="#">查看信箱</a></li>
                        <li class="divider"></li>
                        <li><a href="/logout">登出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>

    <div class = "all">
    <div class="aa">
    <ul  id="leftmenu0">
    <li id = "main" class="hover" onclick="setTab(0,0)"><a href = "/ex/class1">基础知识</a></li>
        <li id = "main" onclick="setTab(0,1)"><a href = "/ex/class2">基本技能</a></li>
        <li id = "main" onclick="setTab(0,2)"><a href = "/ex/class3">重点内容</a></li>
        <li id = "main" onclick="setTab(0,3)"><a href = "/ex/class4">难点内容</a></li>
    </ul>
    </div>

    <div id="mcont0" class="bb">
    </div>

    <footer class="footer">
        <div class="devider"></div>
        <div class="row">
            Copyright (C) 第0军团 20017 All Rights Reserved | <a href="http://www.it.bjfu.edu.cn">北京林业大学信息学院</a>
        </div>
    </footer>
</div>
</body>
</html>