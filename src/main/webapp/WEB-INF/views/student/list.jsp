<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<html xmlns:th="http://www.thymeleaf.org"
	  xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- COVER -->
<section id="slider" class="halfheight m-0" style="background:url('/static/img/bjfu/4.jpg') center">


	<div class="display-table">
		<div class="display-table-cell vertical-align-middle">

			<div class="container text-center">

				<h1 class="fw-600 mt-30 mb-3 wow fadeIn" data-wow-delay="0.6s">学生管理</h1>
				<br>
				<span class="fw-400 text-white wow fadeInUp fs-18 wow fadeIn" data-wow-delay="0.8s" data-wow-delay="0.8s">你好  <sec:authentication property="name"/></span>
			</div>

		</div>
	</div>




	<span class="raster overlay dark-3 z-index-0"><!-- dark|light overlay [0 to 9 opacity] --></span>


</section>
<!-- /COVER -->
<br><br>
${request}
<div class="col-sm-12">
	<c:if test="${not empty errorMessage}">
		<div class="alert alert-error">${f:h(errorMessage)}</div>
	</c:if>

	<div class="inline-search clearfix mb-60">
		<%--<form class="widget_search" action="" method="get">--%>
			<%--<input name="s" class="serch-input" id="s" type="search" placeholder="Search Forum...">--%>
			<%--<button type="submit">--%>
				<%--<i class="fa fa-search"></i>--%>
			<%--</button>--%>
		<%--</form>--%>

		<form:form action="${pageContext.request.contextPath}/student/search"
				   method="get" modelAttribute="studentSearchForm"
				   class="widget_search" >
			<form:input path="name" class="serch-input" placeholder="Search Forum..."/>
			<%--<input type="submit" value="搜索学生" class="btn btn-outline-default" />--%>
			<button type="submit">
				<i class="fa fa-search"></i>
			</button>
		</form:form>
	</div>

	<div class="well">
		<a href="${pageContext.request.contextPath}/student/create?form"
		   class="btn btn-outline-warning btn-lg btn-block" >创建学生账户</a><br> <br>
	</div>

	<%--<div class="well">--%>
		<%--<a href="${pageContext.request.contextPath}/student/create?form"--%>
			<%--class="btn btn-outline-warning">新建用户</a><br> <br>--%>
		<%--<form:form action="${pageContext.request.contextPath}/student/search"--%>
			<%--method="get" modelAttribute="studentSearchForm"--%>
			<%--class="form-inline my-inline">--%>
			<%--<div class="inline-search clearfix mb-60">--%>
				<%--<form class="widget_search" action="" method="get">--%>
					<%--<form:input path="name" class="serch-input" id="s" type="search" placeholder="Search Forum..."/>--%>
					<%--<button type="submit">--%>
						<%--<i class="fa fa-search"></i>--%>
					<%--</button>--%>
				<%--</form>--%>
			<%--</div>--%>
			<%--<input type="submit" value="搜索用户" class="btn btn-outline-secondary"  />--%>
		<%--</form:form>--%>
	<%--</div>--%>

	<%--<div class="well">--%>
		<%--<a href="${pageContext.request.contextPath}/student/create?form"--%>
		   <%--class="btn btn-outline-warning">新建用户</a><br> <br>--%>
		<%--<form:form action="${pageContext.request.contextPath}/student/search"--%>
				   <%--method="get" modelAttribute="studentSearchForm"--%>
				   <%--class="form-inline my-inline">--%>
			<%--<form:input path="name" class="form-control col col-sm-10" />--%>
			<%--<input type="submit" value="搜索用户" class="btn btn-outline-secondary"  />--%>
		<%--</form:form>--%>
	<%--</div>--%>

	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
			<tr>
				<th>编号</th>
				<th>姓名</th>
				<th>邮箱</th>
				<th>生日</th>
				<th>操作</th>
			</tr>
			</thead>

			<tbody>
			<%--<sec:authorize ifAllGranted="ROLE_STU">--%>
			<c:forEach var="student" items="${page.content}">
				<tr>
					<td>${f:h(student.sid)}</td>
					<td>${f:h(student.name)}</td>
					<td>${f:h(student.email)}</td>
					<td>${f:h(student.age )}</td>
					<td><form:form
							action="${pageContext.request.contextPath}/student"
							class="form-inline">
						<input type="hidden" name="sid" value="${f:h(student.sid)}" />
						<input type="submit" class="btn btn-outline-primary"
							   name="redirectToUpdate" value="更新信息" />
						<input type="submit" class="btn btn-outline-danger"
							   name="redirectToDelete" value="删除" />
					</form:form></td>
				</tr>

			</c:forEach>
			<%--</sec:authorize>--%>
			</tbody>
		</table>
	</div>












	<util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
