<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<html xmlns:th="http://www.thymeleaf.org"
	  xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>





<%@ page import="java.util.Random" %>
	<%Random a = new Random(); int x = a.nextInt(13)+1;%>
<!-- COVER -->
<section id="slider" class="halfheight m-0" style="background:url('/static/img/bjfu/<%=x%>.jpg') center">


	<div class="display-table">
		<div class="display-table-cell vertical-align-middle">

			<div class="container text-center">

				<h1 class="fw-600 mt-30 mb-3 wow fadeIn" data-wow-delay="0.6s">教师管理</h1>
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

	<%--<div class="well">--%>
		<%--<a href="${pageContext.request.contextPath}/user/create?form"--%>
			<%--class="btn btn-outline-warning">新建用户</a><br> <br>--%>
		<%--<form:form action="${pageContext.request.contextPath}/teacher/search"--%>
			<%--method="get" modelAttribute="teacherSearchForm"--%>
			<%--class="form-inline my-inline">--%>
			<%--<form:input path="name" class="form-control" />--%>
			<%--<input type="submit" value="搜索用户" class="btn btn-outline-default" />--%>
		<%--</form:form>--%>
	<%--</div>--%>

	<div class="inline-search clearfix mb-60">
		<%--<form class="widget_search" action="" method="get">--%>
		<%--<input name="s" class="serch-input" id="s" type="search" placeholder="Search Forum...">--%>
		<%--<button type="submit">--%>
		<%--<i class="fa fa-search"></i>--%>
		<%--</button>--%>
		<%--</form>--%>

		<form:form action="${pageContext.request.contextPath}/teacher/search"
				   method="get" modelAttribute="teacherSearchForm"
				   class="widget_search" >
			<form:input path="name" class="serch-input" placeholder="搜索教师"/>
			<%--<input type="submit" value="搜索学生" class="btn btn-outline-default" />--%>
			<button type="submit">
				<i class="fa fa-search"></i>
			</button>
		</form:form>
	</div>

	<div class="well">
		<a href="${pageContext.request.contextPath}/teacher/create?form"
		   class="btn btn-outline-warning btn-lg btn-block" >创建教师账户</a><br> <br>
	</div>



	<div class="table-responsive">
		<table class="table table-hover table-condensed">
			<thead>
			<tr>
				<th>编号</th>
				<th>姓名</th>
				<th>邮箱</th>
				<th>职称</th>
				<th>操作</th>
			</tr>
			</thead>
			<%--<%--%>
			<%--UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication() .getPrincipal();--%>
			<%--String username = userDetails.getUsername();--%>
			<%--request.setAttribute("un",username);--%>
			<%--%>--%>
			<tbody>

			<c:forEach var="teacher" items="${page.content}">
				<tr>
					<td>${f:h(teacher.tid)}</td>
					<td>${f:h(teacher.name)}</td>
					<td>${f:h(teacher.email)}</td>
					<td>${f:h(teacher.profession)}</td>
					<td><form:form
							action="${pageContext.request.contextPath}/teacher"
							class="form-inline">
						<input type="hidden" name="tid" value="${f:h(teacher.tid)}" />
						<input type="submit" class="btn btn-outline-primary"
							   name="redirectToUpdate" value="更新信息" />
						<input type="submit" class="btn btn-outline-danger"
							   name="redirectToDelete" value="删除" />
					</form:form></td>
				</tr>
			</c:forEach>

			<%--<sec:authorize ifNotGranted="ROLE_ADMIN">--%>
			<%--<c:forEach var="teacher" items="${page.content}">--%>
			<%--<c:if test="${un==f:h(teacher.name)}">--%>
			<%--<tr>--%>
			<%--<td>${f:h(teacher.TID)}</td>--%>
			<%--<td>${f:h(teacher.name)}</td>--%>
			<%--<td>${f:h(teacher.email)}</td>--%>
			<%--<td>${f:h(teacher.profession)}</td>--%>
			<%--<td><form:form--%>
			<%--action="${pageContext.request.contextPath}/teacher"--%>
			<%--class="form-inline">--%>
			<%--<input type="hidden" name="id" value="${f:h(teacher.TID)}" />--%>
			<%--<input type="submit" class="btn btn-default"--%>
			<%--name="redirectToUpdate" value="更新信息" />--%>
			<%--<input type="submit" class="btn btn-danger"--%>
			<%--name="redirectToDelete" value="删除" />--%>
			<%--</form:form></td>--%>
			<%--</tr>--%>
			<%--</c:if>--%>
			<%--</c:forEach>--%>
			<%--</sec:authorize>--%>
			</tbody>
		</table>
	</div>

	<util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
