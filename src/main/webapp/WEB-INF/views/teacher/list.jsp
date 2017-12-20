<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
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
		<a href="${pageContext.request.contextPath}/user/create?form"
			class="btn btn-primary">新建用户</a><br> <br>
		<form:form action="${pageContext.request.contextPath}/teacher/search"
			method="get" modelAttribute="teacherSearchForm"
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
						<td>${f:h(teacher.TID)}</td>
						<td>${f:h(teacher.name)}</td>
						<td>${f:h(teacher.email)}</td>
						<td>${f:h(teacher.profession)}</td>
						<td><form:form
								action="${pageContext.request.contextPath}/teacher"
								class="form-inline">
							<input type="hidden" name="id" value="${f:h(teacher.TID)}" />
							<input type="submit" class="btn btn-default"
								   name="redirectToUpdate" value="更新信息" />
							<input type="submit" class="btn btn-danger"
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
	<util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
