<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<html xmlns:th="http://www.thymeleaf.org"
	  xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<h2>用户管理</h2>
${request}
<div class="col-sm-12">
	<c:if test="${not empty errorMessage}">
		<div class="alert alert-error">${f:h(errorMessage)}</div>
	</c:if>

	<div class="well">
		<a href="${pageContext.request.contextPath}/student/create?form"
			class="btn btn-primary">新建用户</a><br> <br>
		<form:form action="${pageContext.request.contextPath}/student/search"
			method="get" modelAttribute="studentSearchForm"
			class="form-inline my-inline">
			<form:input path="name" class="form-control" />
			<input type="submit" value="搜索用户" class="btn btn-default" />
		</form:form>
	</div>

	<table class="table table-striped table-bordered table-condensed">
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
						<td>${f:h(student.SID)}</td>
						<td>${f:h(student.name)}</td>
						<td>${f:h(student.email)}</td>
						<td>${f:h(student.age )}</td>
						<td><form:form
								action="${pageContext.request.contextPath}/student"
								class="form-inline">
							<input type="hidden" name="id" value="${f:h(student.SID)}" />
							<input type="submit" class="btn btn-default"
								   name="redirectToUpdate" value="更新信息" />
							<input type="submit" class="btn btn-danger"
								   name="redirectToDelete" value="删除" />
						</form:form></td>
					</tr>

			</c:forEach>
		<%--</sec:authorize>--%>
		</tbody>
	</table>
	<util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
