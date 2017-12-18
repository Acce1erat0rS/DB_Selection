<%--
  Created by IntelliJ IDEA.
  User: sp1ca
  Date: 12/12/2017
  Time: 1:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ppts</title>
</head>
<body>
<h1>授课文件资源</h1>
<%--<script type="text/javascript" src="js/jquery-1.11.1.js"></script>--%>
这一部分是教师上传的授课用资源，要想查看外部资源，点击<a href="/resources">这里</a>查看数据挖掘学习用资源。


<sec:authorize ifAllGranted="ROLE_ADMIN">
    <h2>上传文件</h2>
    <form:form action="uploadPPT" method="post" enctype="multipart/form-data" >
        请选择文件：
        <input id="file" name="file" type="file" />
        <input type="submit" value="上传"  />
    </form:form>
</sec:authorize>


<%--下载：<a href="downloadServlet?filename=graph.zip">graph.zip</a> ${errorResult}--%>
<h2>文件下载列表</h2>
${request}
<div class="col-sm-12">
    <c:if test="${not empty errorMessage}">
        <div class="alert alert-error">${f:h(errorMessage)}</div>
    </c:if>


    <table class="table table-striped table-bordered table-condensed">
        <thead>
        <tr>
            <th>文件编号</th>
            <th>文件名称</th>
            <th>上传日期</th>
            <th>下载次数</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="file" items="${page.content}">
            <tr>
                <td># ${f:h(file.id)}</td>
                <td>${f:h(file.name)}</td>
                <td>${f:h(file.createdAt)}</td>
                <td>${f:h(file.downloaded)}</td>
                <td><form:form
                        action="${pageContext.request.contextPath}/ppts"
                        class="form-inline">
                    <%--传参用的，没有什么意思--%>
                    <input type="hidden" name="id" value="${f:h(file.id)}" />
                    <input type="hidden" name="dir" value="${f:h(file.DIR)}" />


                    <input type="submit" class="btn btn-default"
                           name="redirectToDownload" value="下载" />


                    <sec:authorize ifAllGranted="ROLE_ADMIN">
                        <input type="submit" class="btn btn-danger"
                               name="redirectToDelete" value="删除" onclick="if(confirm('确定删除文件?')===false) return false;"/>
                    </sec:authorize>

                </form:form></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>


</body>
</html>
