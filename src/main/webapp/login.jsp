<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页</title>
    <!-- css -->
    <link type="text/css" href="static/css/general.css" rel="stylesheet">
    <title>Login Page</title>
</head>
<body onload='document.f.j_username.focus();'>


<c:if test="${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message != null}">
    <Script Language="JavaScript">
        alert(${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message});
    </Script>
</c:if>

<header class="header">
    <nav class="head">
        <div class="left">
            <div class="course_name">
                <span>毕业设计选题</span>资源库
            </div>
        </div>

        <div class="right">
            <%--如果没有登录--%>
            <c:if test="${pageContext.request.userPrincipal.name == null}">
                <h3>用户登录</h3>
                <form name='f'
                      action='${pageContext.request.contextPath}/j_spring_security_check'
                      method='POST'>
                    <table>
                        <tr>
                            <td>用户名:</td>
                            <td><input type='text' name='j_username'
                                       value='demo'></td>
                        </tr>
                        <tr>
                            <td>密码:</td>
                            <td><input type='password' name='j_password'
                                       value="demo" /></td>
                        </tr>
                        <tr>
                            <td colspan='2'><input type="checkbox" name="_spring_security_remember_me" />
                                保存登录信息
                            </td>
                        </tr>
                        <tr>
                            <td colspan='2'><input name="submit" type="submit"
                                                   value="login" /></td>
                        </tr>
                    </table>
                </form>
            </c:if>

            <%--如果已经登录--%>
                <div style="margin-top: 80px; font-size: 16px">
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <strong><sec:authentication property="name"/></strong>你好, 欢迎来到BJFU毕业设计选题库.
                        <a href="<c:url value="/logout" />">Logout</a>
                    </c:if>
                </div>



</div>
    </nav>
</header>
<content class="content">
    <div class="left">
        <a href="info/intro">
            <div class="block1">
                <div>
                    <img src="/static/img/tp3.png" width="65" height="65" />
                </div>
                <div class="block1text">选题需知</div>
            </div>
        </a>
        <a href="info/outline">
            <div class="block2">
                <div>
                    <img src="/static/img/tp9.png" width="65" height="65" />
                </div>
                <div class="block2text">教学大纲</div>
            </div>
        </a>
        <a href="/user/list">
            <div class="block3">
                <div>
                    <img src="/static/img/tp2.png" width="65" height="65" />
                </div>
                <div class="block3text">用户管理</div>
            </div>
        </a>
        <a href="info/cal">
            <div class="block4">
                <div>
                    <img src="/static/img/tp8.png" width="65" height="65" />
                </div>
                <div class="block4text">教学日历</div>
            </div>
        </a>
    </div>
    <div class="right">
        <a href="/webchat">
            <div class="block5">
                <div>
                    <img src="http://newjwxt.bjfu.edu.cn/jsxsd/framework/images/tp5.png" width="65" height="65" />
                </div>
                <div class="block5text">师生互动</div>
            </div>
        </a>
    </div>



</content>
<footer class="footer">
    <div class="devider"></div>
    <div class="row">
        Copyright (C) 第0军团 2017 All Rights Reserved | <a href="http://www.it.bjfu.edu.cn">北京林业大学信息学院</a>
    </div>
</footer>








</body>
</html>
