<%--
  Created by IntelliJ IDEA.
  User: 天禹
  Date: 2017/12/22
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ page import="java.util.Random" %>
<%Random a = new Random(); int x = a.nextInt(13)+1;%>
<!-- COVER -->
<section id="slider" class="halfheight m-0" style="background:url('/static/img/bjfu/<%=x%>.jpg') center">


    <div class="display-table">
        <div class="display-table-cell vertical-align-middle">

            <div class="container text-center">

                <h1 class="fw-600 mt-30 mb-3 wow fadeIn" data-wow-delay="0.6s">选择毕设题目</h1>
                <br>
                <span class="fw-400 text-white wow fadeInUp fs-18 wow fadeIn" data-wow-delay="0.8s" data-wow-delay="0.8s">你好  <sec:authentication property="name"/></span>
            </div>

        </div>
    </div>

    <span class="raster overlay dark-3 z-index-0"><!-- dark|light overlay [0 to 9 opacity] --></span>
</section>
<!-- /COVER -->
<br>
<h1>学生选题</h1>
${request}
<br><br>
<div class="col-sm-12">
    <c:if test="${not empty errorMessage}">
        <div class="alert alert-error">${f:h(errorMessage)}</div>
    </c:if>

    <table class="table table-striped table-bordered table-condensed">
        <thead>
            <tr>
            <th>课题编号</th>
            <th>课题名称</th>
            <th>已选人数</th>
            <th>创建时间</th>
            <th>可做操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="project" items="${page.content}">
                <tr>
                    <td># ${f:h(project.pid)}</td>
                    <td>${f:h(project.name)}</td>
                    <td>${f:h(project.chosennum)}</td>
                    <td>${f:h(project.createdAt)}</td>
                    <td><form:form
                            action="${pageContext.request.contextPath}/project"
                            class="form-inline">


                    <input type="hidden" name="pid" value="${f:h(project.pid)}" />
                    <input type="submit" class="btn btn-outline-primary" name="sshow" value = "查看详情"/>
                    <input type="submit" class="btn btn-outline-danger"
                           name="redirectToChose" value="选择该题" />
                </form:form></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
