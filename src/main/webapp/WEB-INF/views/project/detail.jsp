<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/keypoint/update"
		modelAttribute="keyPointForm" class="form-horizontal">
		<fieldset>
			<legend>课题详情</legend>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">课题编号</form:label>
				<div class="col col-sm-10">
					${f:h(projectForm.id)}
					<%--<form:input path="id" type="hidden" />--%>
					<%--<form:errors path="id" cssClass="text-danger" />--%>
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">课题名称</form:label>
				<div class="col col-sm-10">
					<form:input path="name" class="form-control" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">E-mail</form:label>
				<div class="col col-sm-10">
					<%--<form:input path="email" class="form-control" />--%>
					<%--<form:errors path="email" cssClass="text-danger" />--%>
				</div>
			</div>
			<div class="form-group">
				<form:label path="birth" class="col col-sm-2 control-label">Project Birth</form:label>
				<div class="col col-sm-10">
					<%--<form:input path="birth" class="form-control" />--%>
					<%--<form:errors path="birth" cssClass="text-danger" />--%>
					<%--(* yyyy-MM-dd)--%>
				</div>
			</div>
			<div class="form-group">
				<form:label path="password" class="col col-sm-2 control-label">Project Password</form:label>
				<div class="col col-sm-10">
					<%--<form:password path="password" class="form-control" />--%>
					<%--<form:errors path="password" cssClass="text-danger" />--%>
				</div>
			</div>
			<div class="form-group">
				<form:label path="confirmPassword"
					class="col col-sm-2 control-label">Project Password (confirm)</form:label>
				<div class="col col-sm-10">
					<form:password path="confirmPassword" class="form-control" />
					<form:errors path="confirmPassword" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<form:hidden path="version" />
					<form:errors path="version" cssClass="text-danger" />
					<input type="submit" class="btn btn-primary" name="confirm"
						value="Confirm" /> <input type="submit" class="btn btn-default"
						name="redirectToList" value="Back to List" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
