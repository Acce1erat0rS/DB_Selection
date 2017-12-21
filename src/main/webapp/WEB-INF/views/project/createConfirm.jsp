<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/keypoint/create"
		modelAttribute="keyPointForm" class="form-horizontal">
		<fieldset>
			<legend>New User</legend>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">问题内容</form:label>
				<div class="col col-sm-10">
					${f:h(keyPointForm.name)}
					<form:hidden path="name" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="description" class="col col-sm-2 control-label">问题描述</form:label>
				<div class="col col-sm-10">
					${f:h(keyPointForm.description)}
					<form:hidden path="description" />
					<form:errors path="description" cssClass="text-danger" />
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
