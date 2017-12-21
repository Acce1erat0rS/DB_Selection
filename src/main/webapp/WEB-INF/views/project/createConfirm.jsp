<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/project/create"
		modelAttribute="projectForm" class="form-horizontal">
		<fieldset>
			<legend>New User</legend>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">课题内容</form:label>
				<div class="col col-sm-10">
					${f:h(projectForm.name)}
					<form:hidden path="name" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<form:label path="description" class="col col-sm-2 control-label">课题描述</form:label>
				<div class="col col-sm-10">
					${f:h(projectForm.description)}
					<form:hidden path="description" />
					<form:errors path="description" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<form:label path="type" class="col col-sm-2 control-label">课题类型</form:label>
				<div class="col col-sm-10">
						${f:h(projectForm.type)}
					<form:hidden path="type" />
					<form:errors path="type" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
					<input type="submit" class="btn btn-primary" name="create" value="确认提交" />
					<input type="submit" class="btn btn-default" name="redo" value="更改问题" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
