<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<h2>Homework List</h2>
${request}
<div class="col-sm-12">
	<c:if test="${not empty errorMessage}">
		<div class="alert alert-error">${f:h(errorMessage)}</div>
	</c:if>

	<div class="well">
		<a href="${pageContext.request.contextPath}/homework/create?form"
			class="btn btn-primary">New Homework</a><br> <br>
		<form:form action="${pageContext.request.contextPath}/homework/search"
			method="get" modelAttribute="homeworkSearchForm"
			class="form-inline my-inline">
			<form:input path="chapter" class="form-control" />
			<input type="submit" value="Search" class="btn btn-default" />
		</form:form>
	</div>

	<table class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>课题编号</th>
				<th>课题名称</th>
				<th>课题类别</th>
				<th>截止日期</th>
				<th>课题要求</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="homework" items="${page.content}">
				<tr>
					<td>${f:h(homework.id)}</td>
					<td>${f:h(homework.chapter)}</td>
					<td>${f:h(homework.content)}</td>
					<td>${f:h(homework.deadline)}</td>
					<td>${f:h(homework.requirement)}</td>
					<sec:authorize ifAllGranted="ROLE_ADMIN">
					<td><form:form
							action="${pageContext.request.contextPath}/homework"
							class="form-inline">
							<input type="hidden" name="id" value="${f:h(homework.id)}" />
							<input type="submit" class="btn btn-default"
								name="redirectToUpdate" value="Update" />
							<input type="submit" class="btn btn-danger"
								name="redirectToDelete" value="Delete" />
						</form:form></td>
					</sec:authorize>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<util:pagination page="${page}" query="chapter=${f:h(param.chapter)}" />
</div>
