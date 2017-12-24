<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<h2>重难点</h2>
${request}
老师请选择一位同学完成这一个题目的毕业设计
<div class="col-sm-12">
	<c:if test="${not empty errorMessage}">
		<div class="alert alert-error">${f:h(errorMessage)}</div>
	</c:if>

	<table class="table table-striped table-bordered table-condensed">
		<thead>
		<tr>
			<th>题目编号</th>
			<th>学号</th>
			<th>姓名</th>
			<th>联系方式</th>
			<th>选择时间</th>
			<th>可做操作</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="subs" items="${subslist}">
			<tr>
				<td># ${f:h(subs.PID)}</td>
				<td>${f:h(subs.SID)}</td>
				<th>${f:h(subs.SN)}</th>>
				<td>${f:h(subs.SEmail)}</td>
				<td>${f:h(subs.logtime)}</td>
				<td><form:form
						action="${pageContext.request.contextPath}/project"
						class="form-inline">
					<input type="hidden" name="pid" value="${f:h(subs.PID)}" />
					<input type="hidden" name="sid" value="${f:h(subs.SID)}" />
					<input type="submit" class="btn btn-default" name="show" value = "查看详情"/>
					<input type="submit" class="btn btn-default"
						   name="finalize" value="选择该生" />
				</form:form></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

	<util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
